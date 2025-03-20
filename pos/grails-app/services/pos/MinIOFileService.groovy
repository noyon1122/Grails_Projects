package pos
import com.amazonaws.auth.AWSStaticCredentialsProvider
import com.amazonaws.auth.BasicAWSCredentials
import com.amazonaws.client.builder.AwsClientBuilder
import com.amazonaws.services.s3.AmazonS3
import com.amazonaws.services.s3.AmazonS3ClientBuilder
import com.amazonaws.services.s3.model.CannedAccessControlList
import com.amazonaws.services.s3.model.ObjectMetadata
import com.amazonaws.services.s3.model.PutObjectRequest
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


class MinIOFileService {

    def grailsApplication

    def uploadCompressedPdf(File inputFile) {
        System.setProperty("https.protocols", "TLSv1.2")

        def s3Endpoint = grailsApplication.config.minio.s3Endpoint
        def s3BucketName = grailsApplication.config.minio.s3BucketName
        def s3AccessKey = grailsApplication.config.minio.s3AccessKey
        def s3SecretKey = grailsApplication.config.minio.s3SecretKey

        try {
            BasicAWSCredentials credentials = new BasicAWSCredentials(s3AccessKey, s3SecretKey)
            AmazonS3 s3Client = AmazonS3ClientBuilder.standard()
                    .withEndpointConfiguration(new AwsClientBuilder.EndpointConfiguration(s3Endpoint, "us-east-1"))
                    .withCredentials(new AWSStaticCredentialsProvider(credentials))
                    .withPathStyleAccessEnabled(true)
                    .build()

            if (!inputFile.exists()) {
                throw new Exception("File does not exist at path: ${inputFile}")
            }

            // Compress PDF
            ByteArrayOutputStream compressedPdfStream = compressPdf(inputFile)
            if (compressedPdfStream == null) {
                throw new Exception("Failed to compress PDF")
            }

            // Upload directly to MinIO from memory
            String objectKey =inputFile.name
            ObjectMetadata metadata = new ObjectMetadata()
            metadata.setContentType("application/pdf")
            InputStream inputStream = new ByteArrayInputStream(compressedPdfStream.toByteArray())
            s3Client.putObject(new PutObjectRequest(s3BucketName, objectKey, inputStream, metadata)
                    .withCannedAcl(CannedAccessControlList.PublicRead))

            // Construct permanent URL
            String publicUrl = "${s3Endpoint}/${s3BucketName}/${objectKey}"
            return publicUrl

        } catch (Exception e) {
            e.printStackTrace()
            return "Error: ${e.message}"
        }
    }

    private ByteArrayOutputStream compressPdf(File inputFile) throws IOException, DocumentException {
        PdfReader reader = new PdfReader(new FileInputStream(inputFile))
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream()
        PdfStamper stamper = new PdfStamper(reader, outputStream)

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

        stamper.setFullCompression()
        stamper.close()
        reader.close()

        return outputStream
    }

    private byte[] compressImageStream(PRStream stream) throws IOException {
        byte[] imgBytes = PdfReader.getStreamBytesRaw(stream)
        if (imgBytes == null || imgBytes.length == 0) {
            return null
        }

        BufferedImage img = ImageIO.read(new ByteArrayInputStream(imgBytes))
        if (img == null) {
            return null
        }

        boolean isBlackWhite = (img.getType() == BufferedImage.TYPE_BYTE_BINARY)

        int newWidth = Math.max(1, img.getWidth())
        int newHeight = Math.max(1, img.getHeight())

        BufferedImage resizedImg = new BufferedImage(newWidth, newHeight, isBlackWhite ? BufferedImage.TYPE_BYTE_GRAY : BufferedImage.TYPE_INT_RGB)
        Graphics2D g = resizedImg.createGraphics()
        g.drawImage(img, 0, 0, newWidth, newHeight, null)
        g.dispose()

        ByteArrayOutputStream baos = new ByteArrayOutputStream()
        ImageWriter writer = ImageIO.getImageWritersByFormatName("jpeg").next()
        ImageWriteParam param = writer.getDefaultWriteParam()

        if (param.canWriteCompressed()) {
            param.setCompressionMode(ImageWriteParam.MODE_EXPLICIT)
            param.setCompressionQuality(isBlackWhite ? 0.7f : 0.2f)
        }

        ImageOutputStream ios = ImageIO.createImageOutputStream(baos)
        writer.setOutput(ios)
        writer.write(null, new IIOImage(resizedImg, null, null), param)
        ios.close()
        baos.close()

        return baos.toByteArray()
    }
}


