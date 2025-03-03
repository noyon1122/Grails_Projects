<html>
<head>
</head>
<body>
<div>
<g:uploadForm action="upload"  method="POST">
<label>Name </label>
<g:textField name="name" />
<label>Mobile </label>
<g:textField name="mobile" />
<label>File </label>
 <input type="file" name="fileName" required/>

<g:submitButton name="Save" />
</g:uploadForm>
</body>
</html>