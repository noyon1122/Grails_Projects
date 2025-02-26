<html>
<head>
<meta name="layout" content="main"/>
</head>
<body>
<h1>Student Update Page</h1>

<g:form controller="plaza" action="update" method="POST">
<g:hiddenField name="id" value="${plaza.id}"/>
<label>Name</label>
<g:textField name="name" value="${plaza.name}" required="true" /> <br>

<label>Department</label>
<g:textField name="email" value="${plaza.email}" required="true" /> <br>

<label>Phone</label>
<g:textField name="phone" value="${plaza.phone}" required="true" /> <br>

<label>Address</label>
<g:textField name="address" value="${plaza.address}"/> <br>

<label>Status</label>
<g:textField name="status" value="${plaza.status}"/> <br>

<label>Vat</label>
<g:textField name="vat" value="${plaza.vat}"/> <br>

<g:submitButton name="Update Plaza" />
</g:form>

</body>
</html>