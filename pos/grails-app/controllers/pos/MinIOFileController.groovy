package pos

import org.springframework.web.multipart.MultipartFile

class MinIOFileController {

    def minIOFileService

    def index() {
        // Fetch all uploaded files from the database
        def fileList = MinIOFile.list()
        [fileList: fileList]
    }

    def upload() {

            MultipartFile uploadedFile = request.getFile('pdfFile')


            if (!uploadedFile.empty) {
                try {
                    File file = new File(uploadedFile.originalFilename)
                     uploadedFile.transferTo(file)

                    String result = minIOFileService.uploadCompressedPdf(file)

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

    }
}
