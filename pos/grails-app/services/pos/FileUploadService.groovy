package pos
import com.itextpdf.text.DocumentException
import com.itextpdf.text.pdf.*
import javax.imageio.IIOImage
import javax.imageio.ImageIO
import javax.imageio.ImageWriteParam
import javax.imageio.ImageWriter
import javax.imageio.stream.ImageOutputStream
import java.awt.Graphics2D
import java.awt.image.BufferedImage
import java.io.*

class FileUploadService {

    InputStream compressedPdf(InputStream inputStream) throws IOException, DocumentException {
        // Create a byte array output stream to hold the compressed PDF
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream()

        // Read the PDF input stream
        PdfReader reader = new PdfReader(inputStream)

        // Prepare to write to the compressed byte array output stream
        PdfStamper stamper = new PdfStamper(reader, byteArrayOutputStream)

        // Traverse each page
        for (int i = 1; i <= reader.numberOfPages; i++) {
            // Get page resources (images, fonts)
            PdfDictionary pageDict = reader.getPageN(i)
            PdfDictionary resources = pageDict.getAsDict(PdfName.RESOURCES)

            if (resources != null) {
                // Check if there are XObjects (images or other objects) on the page
                PdfDictionary xObjects = resources.getAsDict(PdfName.XOBJECT)
                if (xObjects != null) {
                    // Loop through all XObjects to find images
                    for (PdfName key : xObjects.getKeys()) {
                        PdfObject obj = xObjects.getDirectObject(key)
                        if (obj instanceof PRStream) {
                            PRStream stream = (PRStream) obj
                            // Check if the object is an image
                            PdfObject subtype = stream.get(PdfName.SUBTYPE)

                            if (PdfName.IMAGE.equals(subtype)) {
                                // Compress the image
                                byte[] compressedImage = compressImageStream(stream)
                                if (compressedImage != null) {
                                    // Update the image with the compressed size
                                    stream.setData(compressedImage, false, PdfStream.BEST_COMPRESSION)
                                    stream.put(PdfName.FILTER, PdfName.DCTDECODE)
                                }
                            }
                        }
                    }
                }
            }
        }

        // Enable full compression
        stamper.setFullCompression()
        // Close the stamper,reader,stream after processing
        stamper.close()
        reader.close()
        inputStream.close()

        // Return the compressed PDF as an InputStream
        return new ByteArrayInputStream(byteArrayOutputStream.toByteArray())
    }

    // Method to compress images
    private byte[] compressImageStream(PRStream stream) throws IOException {
        // Get the bytes of the image stream
        byte[] imgBytes = PdfReader.getStreamBytesRaw(stream)
        if (imgBytes == null || imgBytes.length == 0) {
            return null // Return null if image data is empty
        }

        // Read the image from the byte
        BufferedImage img = ImageIO.read(new ByteArrayInputStream(imgBytes))
        if (img == null) {
            return null
        }

        // Check if the image is black and white
        boolean isBlackWhite = (img.getType() == BufferedImage.TYPE_BYTE_BINARY)

        // Resize the image
        int newWidth = Math.max(1, (int) (img.getWidth()))
        int newHeight = Math.max(1, (int) (img.getHeight()))

        // Create a new image with the resized dimensions
        BufferedImage resizedImg = new BufferedImage(newWidth, newHeight, isBlackWhite ? BufferedImage.TYPE_BYTE_GRAY : BufferedImage.TYPE_INT_RGB)
        Graphics2D g = resizedImg.createGraphics()
        g.drawImage(img, 0, 0, newWidth, newHeight, null)
        g.dispose()

        // Prepare to compress the image using JPEG format
        ByteArrayOutputStream baos = new ByteArrayOutputStream()
        ImageWriter writer = ImageIO.getImageWritersByFormatName("jpeg").next() // Get JPEG writer
        ImageWriteParam param = writer.getDefaultWriteParam()

        // Set compression
        if (param.canWriteCompressed()) {
            param.setCompressionMode(ImageWriteParam.MODE_EXPLICIT)
            // Set compression percentage (0.3f means 30% of original size)
            // Change to 0.2f for 20% of original size
            param.setCompressionQuality(0.3f)
        }

        // Write the compressed image to the byte array output stream
        ImageOutputStream ios = ImageIO.createImageOutputStream(baos)
        writer.setOutput(ios)
        writer.write(null, new IIOImage(resizedImg, null, null), param) // Write image with compression
        ios.close()
        baos.close()

        // Return the compressed image byte
        return baos.toByteArray()
    }
}










