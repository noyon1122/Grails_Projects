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

    File compressPdf(File inputFile) throws IOException, DocumentException {
        // Ensure upload directory exists
        File uploadDir = new File("web-app/uploads")
        if (!uploadDir.exists()) {
            uploadDir.mkdirs()
        }

        // Define compressed file path
        File compressedFile = new File(uploadDir, "compressed_" + inputFile.name)

        PdfReader reader = new PdfReader(new FileInputStream(inputFile))
        PdfStamper stamper = new PdfStamper(reader, new FileOutputStream(compressedFile))

        for (int i = 1; i <= reader.numberOfPages; i++) {
            PdfDictionary pageDict = reader.getPageN(i)
            PdfDictionary resources = pageDict.getAsDict(PdfName.RESOURCES)

            if (resources != null) {
                PdfDictionary xObjects = resources.getAsDict(PdfName.XOBJECT)
                if (xObjects != null) {
                    for (PdfName key : xObjects.getKeys()) {
                        PdfObject obj = xObjects.getDirectObject(key)
                        if (obj instanceof PRStream) {
                            PRStream stream = (PRStream) obj
                            PdfObject subtype = stream.get(PdfName.SUBTYPE)

                            if (PdfName.IMAGE.equals(subtype)) {
                                byte[] compressedImage = compressImageStream(stream)
                                if (compressedImage != null) {
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
        stamper.close()
        reader.close()

        return compressedFile
    }

    private byte[] compressImageStream(PRStream stream) throws IOException {
        byte[] imgBytes = PdfReader.getStreamBytesRaw(stream)
        if (imgBytes == null || imgBytes.length == 0) {
            return null
        }

        BufferedImage img = ImageIO.read(new ByteArrayInputStream(imgBytes))
        if (img == null) {
            return null // Prevent blank pages due to unsupported images
        }

        boolean isBlackWhite = (img.getType() == BufferedImage.TYPE_BYTE_BINARY)

        // Correctly resize images without merging pages
        int newWidth = Math.max(1, (int) (img.getWidth()))
        int newHeight = Math.max(1, (int) (img.getHeight()))

        BufferedImage resizedImg = new BufferedImage(newWidth, newHeight, isBlackWhite ? BufferedImage.TYPE_BYTE_GRAY : BufferedImage.TYPE_INT_RGB)
        Graphics2D g = resizedImg.createGraphics()
        g.drawImage(img, 0, 0, newWidth, newHeight, null)
        g.dispose()

        // Use JPEG compression
        ByteArrayOutputStream baos = new ByteArrayOutputStream()
        ImageWriter writer = ImageIO.getImageWritersByFormatName("jpeg").next()
        ImageWriteParam param = writer.getDefaultWriteParam()

        if (param.canWriteCompressed()) {
            param.setCompressionMode(ImageWriteParam.MODE_EXPLICIT)
            param.setCompressionQuality(isBlackWhite ? 0.7f : 0.2f) // Reduce file size aggressively
        }

        ImageOutputStream ios = ImageIO.createImageOutputStream(baos)
        writer.setOutput(ios)
        writer.write(null, new IIOImage(resizedImg, null, null), param)
        ios.close()
        baos.close()

        return baos.toByteArray()
    }
}
