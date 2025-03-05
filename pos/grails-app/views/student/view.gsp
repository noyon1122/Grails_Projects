<html>
<head>
    <title>Upload to MinIO</title>
</head>
<body>
    <h1>Upload File to MinIO</h1>

    <g:if test="${flash.message}">
        <p style="color: green;">${flash.message}</p>
    </g:if>

    <form action="${createLink(controller: 'student', action: 'uploadFile')}" method="POST" enctype="multipart/form-data">
        <input type="file" name="file" required/>
        <button type="submit">Upload</button>
    </form>
</body>
</html>
