<html>
<head>
<meta name="layout" content="main"/>
</head>
<body>
<h1>All Faculty Information</h1>

<table>
<tr>
<th>Department Name</th>
<th>Location</th>
<th>Action</th>
</tr>

<g:each var="faculty" in="${faculties}">
<tr>
<td>${faculty.name}</td>
<td>${faculty.location}</td>
<td>
<g:link action="edit" id="${student.id}">Edit</g:link>
<g:link action="delete" id="${student.id}">Delete</g:link>
</td>
</tr>
</g:each>
</table>


</body>
</html>