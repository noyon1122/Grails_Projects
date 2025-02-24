<html>
<head>
<meta name="layout" content="main"/>
</head>
<body>
<h1> Welcome to the Student Community!!! </h1>

<g:link controller="student" action="create">Add Student</g:link>

<g:form action="search" method="GET">
<label>Name</label>
<g:textField name="name" required="true" />

<g:submitButton name="Search" />
</g:form>
<table border="1">
<tr>
<th>Name</th>
<th>Department</th>
<th>Phone</th>
<th>Action</th>
</tr>

<g:each var="student" in="${students}">
<tr>
<td>${student.name}</td>
<td>${student.dept}</td>
<td>${student.phone}</td>
<td>
<g:link action="edit" id="${student.id}">Edit</g:link>
<g:link action="delete" id="${student.id}">Delete</g:link>
</td>

</tr>
</g:each>
</table>


</body>
</html>