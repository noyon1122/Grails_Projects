package pos
import com.amazonaws.auth.AWSStaticCredentialsProvider
import com.amazonaws.auth.BasicAWSCredentials
import com.amazonaws.client.builder.AwsClientBuilder
import com.amazonaws.services.s3.AmazonS3
import com.amazonaws.services.s3.AmazonS3ClientBuilder
import com.amazonaws.services.s3.model.CannedAccessControlList
import com.amazonaws.services.s3.model.ObjectMetadata
import com.amazonaws.services.s3.model.PutObjectRequest
import org.joda.time.DateTime
import org.joda.time.format.DateTimeFormat
import org.joda.time.format.DateTimeFormatter

import java.io.*
import java.text.SimpleDateFormat

class MinIOFileService {

    def grailsApplication

    def uploadPdf(InputStream compressedPdfStream, String originalFilename) {
        System.setProperty("https.protocols", "TLSv1.2")

        def s3Endpoint = grailsApplication.config.minio.s3Endpoint
        def s3BucketName = grailsApplication.config.minio.s3BucketName
        def s3AccessKey = grailsApplication.config.minio.s3AccessKey
        def s3SecretKey = grailsApplication.config.minio.s3SecretKey

        try {
            BasicAWSCredentials credentials = new BasicAWSCredentials(s3AccessKey, s3SecretKey)
            AmazonS3 s3Client = AmazonS3ClientBuilder.standard()
                    .withEndpointConfiguration(new AwsClientBuilder.EndpointConfiguration(s3Endpoint, "us-east-1"))
                    .withCredentials(new AWSStaticCredentialsProvider(credentials))
                    .withPathStyleAccessEnabled(true)
                    .build()

            //set current date to the original filename
            DateTime date_now = new DateTime()
            DateTimeFormatter dateFormat = DateTimeFormat.forPattern("yyyy-MM-dd_hh-mm-ss-a")
            String formattedDate = dateFormat.print(date_now)

          //take max 5 character from the original filename
            String objectKey = formattedDate + "_" + originalFilename.substring(0, Math.min(originalFilename.length()-4, 5));
            ObjectMetadata metadata = new ObjectMetadata()
            metadata.setContentType("application/pdf")

            //send pdf in minio cloud
            s3Client.putObject(new PutObjectRequest(s3BucketName, objectKey, compressedPdfStream, metadata)
                    .withCannedAcl(CannedAccessControlList.PublicRead))

            // Construct permanent URL
            String publicUrl = "${s3Endpoint}/${s3BucketName}/${objectKey}"
            return publicUrl

        } catch (Exception e) {
            e.printStackTrace()
            return "Error: ${e.message}"
        }
    }
}
