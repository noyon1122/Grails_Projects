<html>
<head>
<meta name="layout" content="main"/>
</head>
<body>
<div>Add New Plaza</div>

<g:form action="save" method="POST">
<label>Name</label>
<g:textField name="name" /> <br>

<label>Email</label>
<g:textField name="email" /> <br>

<label>Phone</label>
<g:textField name="phone" /> <br>

<label>Address</label>
<g:textField name="address" /> <br>

<label>Status</label>
<g:textField name="status" /> <br>

<label>Vat</label>
<g:textField name="vat" /> <br>

<g:submitButton name="Add Plaza" />

</g:form>
</body>

</html>