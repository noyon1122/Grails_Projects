<html>
<body>
<g:form action="upload" method="post" enctype="multipart/form-data">
    <input type="file" name="file" />
    <button type="submit">Upload</button>
</g:form>

<g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
</g:if>

</body>
</html>