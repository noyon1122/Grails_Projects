package pos

import javax.imageio.ImageIO
import java.awt.Graphics2D
import java.awt.Image
import java.awt.image.BufferedImage

class FileUploadController {

    def index() {
        def imageList=FileUpload.findAll()
        [imageList:imageList]
    }

    def fileUploadService

    def upload() {
        def uploadedFile = request.getFile('fileName') // Get uploaded image file
        if (!uploadedFile || uploadedFile.empty) {
            flash.message = "Please upload a valid image file."
            redirect(action: 'index')
            return
        }

        String originalFilename = uploadedFile.originalFilename
        int targetWidth = 800
        int targetHeight = 600
        float quality = 0.6f

        try {
            BufferedImage originalImage = ImageIO.read(uploadedFile.inputStream)
            BufferedImage resizedImage = resizeImage(originalImage, targetWidth, targetHeight)
            ByteArrayOutputStream compressedImageStream = new ByteArrayOutputStream()

            // Compress and write image
            ImageIO.write(resizedImage, "jpg", compressedImageStream)

            byte[] compressedImageBytes = compressedImageStream.toByteArray()
            println "Original Size: ${uploadedFile.size / 1024} KB, Compressed Size: ${compressedImageBytes.length / 1024} KB"

            // Save the compressed image (Modify as per your requirements)
            File outputFile = new File("web-app/assets/image/${originalFilename}")
            outputFile.bytes = compressedImageBytes

            flash.message = "Image uploaded and compressed successfully!"
             //image saved in the database
            def imageFile = new FileUpload(fileName: originalFilename, filePath: "assets/image/${originalFilename}")
            if (imageFile.save(flush: true)) {
                flash.message = "Image uploaded and saved successfully!"
            } else {
                flash.message = "Failed to save image data: ${imageFile.errors}"
            }
        } catch (Exception e) {
            flash.message = "Error processing image: ${e.message}"
        }

        redirect(action: "index")
    }

    private BufferedImage resizeImage(BufferedImage originalImage, int width, int height) {
        Image scaledImage = originalImage.getScaledInstance(width, height, Image.SCALE_SMOOTH)
        BufferedImage resizedImage = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB)
        Graphics2D g2d = resizedImage.createGraphics()
        g2d.drawImage(scaledImage, 0, 0, width, height, null)
        g2d.dispose()
        return resizedImage
    }


}
