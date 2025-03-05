package pos

import io.minio.MinioClient
import io.minio.errors.MinioException
import org.springframework.web.multipart.MultipartFile
import org.springframework.web.multipart.commons.CommonsMultipartFile

class StudentService{

    String minioEndpoint = "https://minio-console.waltonbd.com"  // MinIO endpoint URL
    String accessKey = ""  // Replace with your MinIO access key
    String secretKey = ""  // Replace with your MinIO secret key
    String bucketName = "wc-pos"  // Replace with your bucket name

    def uploadImage(MultipartFile file) {
        try {
            // Initialize MinIO client
            MinioClient minioClient = new MinioClient(minioEndpoint, accessKey, secretKey)

            // Check if the bucket exists, if not create it
            boolean isExist = minioClient.bucketExists(bucketName)
            if (!isExist) {
                minioClient.makeBucket(bucketName)
            }

            // Upload the image file to MinIO
            InputStream inputStream = file.inputStream
            minioClient.putObject(bucketName, file.originalFilename, inputStream, file.contentType)

            return "File uploaded successfully!"
        } catch (MinioException e) {
            e.printStackTrace()
            return "Error occurred while uploading file: ${e.message}"
        }
    }
}