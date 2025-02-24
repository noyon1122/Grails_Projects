<html>
<head>
<meta name="layout" content="main"/>
</head>
<body>
<h1>Add Student</h1>

<g:form controller="student" action="save" method="POST">
<label>Name</label>
<g:textField name="name" required="true" />

<label>Department</label>
<g:textField name="dept" required="true" />

<label>Phone</label>
<g:textField name="phone" required="true" />

<g:submitButton name="Add Student" />
</g:form>
</body>
<html/>