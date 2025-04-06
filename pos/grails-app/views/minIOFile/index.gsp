<!DOCTYPE html>
<html>
<head>
    <title>Uploaded Files</title>
     <g:render template="/layouts/heading" />
</head>
<body>
    <h2>Upload File</h2>

   <g:form useToken="true" action="upload" method="POST" enctype="multipart/form-data">
       <input type="file" name="pdfFile" required />
       <button type="submit">Upload</button>
  </g:form>

   <g:if test="${flash.message}">
       <div class="message" style="color: green; margin-bottom: 10px;">
           ${flash.message}
       </div>
   </g:if>

    <table border="1">
        <tr>
            <th>Filename</th>
            <th>Download Link</th>
        </tr>
        <g:each var="file" in="${fileList}">
            <tr>
                <td>${file.fileName}</td>
                <td><a href="${file.fileUrl}" target="_blank">Download</a></td>
            </tr>
        </g:each>
    </table>


</body>
</html>
