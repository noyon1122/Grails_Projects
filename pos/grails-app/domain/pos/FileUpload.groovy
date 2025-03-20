package pos

class FileUpload {
    String fileName
    String fileUrl

    static constraints = {
        fileName(nullable: false)
        fileUrl(nullable: true)
    }
}
