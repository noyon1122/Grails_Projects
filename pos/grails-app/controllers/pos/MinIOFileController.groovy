package pos

import org.springframework.web.multipart.MultipartFile

class MinIOFileController {

    def minIOFileService
    FileUploadService fileUploadService

    def index() {
        // Fetch all uploaded files from the database
        def fileList = MinIOFile.list()
        [fileList: fileList]
    }

    def upload() {
        withForm {
            MultipartFile uploadedFile = request.getFile('pdfFile')
            if (!uploadedFile.empty) {
                try {

                    InputStream inputStream = uploadedFile.inputStream
                    InputStream compressedPdfStream = fileUploadService.compressedPdf(inputStream)
                    String result = minIOFileService.uploadPdf(compressedPdfStream, uploadedFile.originalFilename)

                    // Save file details in the database
                    new MinIOFile(fileName: uploadedFile.originalFilename, fileUrl: result).save(flush: true)

                    redirect(action:"index")
                } catch (Exception e) {
                    log.error("Error uploading file: ${e.message}", e)
                    render "Error uploading file: ${e.message}"
                }
            } else {
                render "No file selected for upload."
            }
        }.invalidToken {
            // Duplicate submission caught here
            flash.message = "Form already submitted. Please do not resubmit the form."
            redirect(action: "index")
        }


    }
}
