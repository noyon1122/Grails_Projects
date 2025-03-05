package pos

import com.amazonaws.services.s3.AmazonS3
import com.amazonaws.services.s3.model.ObjectMetadata
import io.minio.MinioClient
import io.minio.errors.MinioException
import org.springframework.web.multipart.MultipartFile

class StudentController {
     def index(){}
    String minioEndpoint = "https://minio-console.waltonbd.com"  // MinIO endpoint URL
    String accessKey = ""  // MinIO access key
    String secretKey = ""  // MinIO secret key
    String bucketName = "wc-pos"  // MinIO bucket name for storing files

    // Method to render the file upload form


    // Method to handle file upload
    def upload() {
        if (request.method == 'POST' && request.getFile('file')?.empty == false) {
            def file = request.getFile('file')  // Get the file from the request
            def result = uploadToMinio(file)  // Call the method to upload to MinIO
           redirect(action:"view")
        } else {
            render "No file selected"
        }
    }

    // Helper method to upload file to MinIO
    private def uploadToMinio(MultipartFile file) {
        try {
            // Configure AWS credentials for MinIO
            BasicAWSCredentials awsCredentials = new BasicAWSCredentials(accessKey, secretKey)

            // Initialize the AmazonS3 client
            AmazonS3 s3Client = AmazonS3ClientBuilder.standard()
                    .withEndpointConfiguration(new AmazonS3ClientBuilder.EndpointConfiguration(minioEndpoint, "us-east-1"))
                    .withCredentials(new AWSStaticCredentialsProvider(awsCredentials))
                    .withPathStyleAccessEnabled(true)  // Enable path-style access (MinIO compatibility)
                    .build()

            // Check if the bucket exists, and create it if necessary
            if (!s3Client.doesBucketExistV2(bucketName)) {
                s3Client.createBucket(bucketName)
            }

            // Upload the file to the bucket
            InputStream inputStream = file.inputStream
            String objectName = file.originalFilename  // Use the original filename as the object name

            // Create metadata for the file
            ObjectMetadata metadata = new ObjectMetadata()
            metadata.setContentType(file.contentType)
            metadata.setContentLength(file.size)

            // Upload the object to MinIO (S3-compatible)
            s3Client.putObject(bucketName, objectName, inputStream, metadata)

            return "File uploaded successfully to MinIO using AWS SDK!"

        } catch (Exception e) {
            e.printStackTrace()
            return "Error occurred while uploading file: ${e.message}"
        }
    }
}
