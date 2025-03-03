package pos

import java.awt.Image
import java.awt.image.BufferedImage

class FileUploadService {

    def serviceMethod() {

    }

    def resizeImage(File inputFile, File outputFile, int width, int height) {
        // Read the original image
        BufferedImage originalImage = ImageIO.read(inputFile)

        // Create a resized version
        Image resizedImage = originalImage.getScaledInstance(width, height, Image.SCALE_SMOOTH)

        // Create a new BufferedImage
        BufferedImage bufferedResizedImage = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB)

        // Draw the resized image to the BufferedImage
        def g2d = bufferedResizedImage.createGraphics()
        g2d.drawImage(resizedImage, 0, 0, null)
        g2d.dispose()

        // Write the resized image to output file (e.g., "jpg", "png")
        ImageIO.write(bufferedResizedImage, "jpg", outputFile)
    }
}
