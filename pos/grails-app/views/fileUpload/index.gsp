<!DOCTYPE html>
<html>
<head>

     <g:render template="/layouts/heading" />
    <title>File Upload</title>
</head>
<body>
    <h1>Upload PDF File</h1>
    <g:form action="upload" enctype="multipart/form-data">
        <label for="file">Choose PDF to upload:</label>
        <input type="file" name="file" accept="application/pdf" required />
        <button type="submit">Upload</button>
    </g:form>

    <h2>Uploaded Files</h2>
    <table border="1">
        <thead>
            <tr>
                <th>File Name</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <g:each in="${imageList}" var="fileUpload">
                <tr>
                    <td>${fileUpload.fileName}</td>
                    <td>
                        <!-- Link to open the PDF in a new tab -->
                        <g:link action="download" id="${fileUpload.id}" target="_blank">Download</g:link>
                    </td>
                </tr>
            </g:each>
        </tbody>
    </table>

</body>
</html>
