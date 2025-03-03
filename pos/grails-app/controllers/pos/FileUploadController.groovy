package pos

import org.codehaus.groovy.grails.plugins.testing.GrailsMockMultipartFile

class FileUploadController {

    def index() { }

    def fileUploadService

    def upload() {
        def uploadedFile = request.getFile('fileName')
        if (!uploadedFile.empty) {
            def inputFile = new File("/grails-app/uploads/${uploadedFile.originalFilename}")
            uploadedFile.transferTo(inputFile)

            def outputFile = new File("/grails-app/uploads/${uploadedFile.originalFilename}")
            fileUploadService.resizeImage(inputFile, outputFile, 300, 300)

            render "Image resized successfully!"
        } else {
            render "No image uploaded."
        }
    }
    def view(){}

}
