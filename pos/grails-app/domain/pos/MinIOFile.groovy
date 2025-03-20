package pos

class MinIOFile {
    String fileName
    String fileUrl  // MinIO file URL

    static constraints = {
        fileName nullable: false
        fileUrl nullable: false
    }
}
