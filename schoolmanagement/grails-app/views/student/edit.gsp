<html>
<head>
<meta name="layout" content="main"/>
</head>
<body>
<h1>Student Update Page</h1>

<g:form controller="student" action="update" method="POST">
<g:hiddenField name="id" value="${student.id}"/>
<label>Name</label>
<g:textField name="name" value="${student.name}" required="true" />

<label>Department</label>
<g:textField name="dept" value="${student.dept}" required="true" />

<label>Phone</label>
<g:textField name="phone" value="${student.phone}" required="true" />

<g:submitButton name="Update Student" />
</g:form>

</body>
</html>