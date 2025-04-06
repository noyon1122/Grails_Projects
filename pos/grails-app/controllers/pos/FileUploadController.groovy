package pos
import org.springframework.web.multipart.MultipartFile
import pos.FileUpload

import java.util.UUID

class FileUploadController {

    def grailsApplication

    def index() {
        def imageList = FileUpload.findAll()
        [imageList: imageList]
    }

    FileUploadService fileUploadService

    def upload() {
        def uploadedFile = request.getFile('file')
        if (!file || file.empty) {
            flash.message = "No file uploaded!"
            redirect(action: "index")
            return
        }

        InputStream inputStream = uploadedFile.inputStream
        InputStream compressedInputStream = fileUploadService.compressedPdf(inputStream)

        flash.message = "File uploaded and compressed successfully!"
        redirect(action: "download", params: [fileName: compressedFile.name])
    }
    def download(Long id) {
        def fileUpload = FileUpload.get(id)

        if (!fileUpload) {
            flash.message = "File not found."
            redirect(action: "index")
            return
        }

        // Set the path to the saved file on the server
        File file = new File("web-app/uploads/${fileUpload.fileName}")

        if (!file.exists()) {
            flash.message = "File not found on the server."
            redirect(action: "index")
            return
        }

        // Set the response content type to show PDF in the browser
        response.contentType = "application/pdf"
        response.setHeader("Content-disposition", "inline; filename=${fileUpload.fileName}")
        response.outputStream << file.bytes
        response.outputStream.flush()
    }
}