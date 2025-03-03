<html>
<head>
<g:render template="/layouts/heading" />
</head>
<body>
<div>
<g:uploadForm action="upload"  method="POST">

 <input type="file" name="fileName" required/>

<g:submitButton name="Save" />
</g:uploadForm>

<div>${flash.message}</div>

<table border="1">
    <thead>
        <tr>

            <th>File Name</th>
            <th>Image</th>
        </tr>
    </thead>
    <tbody>
        <g:each in="${imageList}" var="image">
            <tr>
                <td>${image.fileName}</td>
                <!-- Display image -->
                <td>
                    <img src="${resource(dir: '', file: image.filePath)}" width="100" height="100" />
                </td>


            </tr>
        </g:each>
    </tbody>
</table>

</body>
</html>