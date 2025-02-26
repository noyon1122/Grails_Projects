<html>
<head>
<meta name="layout" content="main"/>
</head>
<body>

<div>
<div>
 <g:link action="engineering">Engineering</g:link>
</div>
<div>
  <g:link action="lifeScience">Life Science</g:link>
</div>
<div>
   <g:link action="agricul">Agriculture</g:link>
</div>
</div>
<h1>All Faculty Information</h1>
<table>
<tr>
<th>Faculty Name</th>
<th>Department Name</th>
<th>Location</th>
<th>Action</th>
</tr>

<g:each var="faculty" in="${faculties}">
<tr>
<td>${faculty.facultyName}</td>
<td>${faculty.deptName}</td>
<td>${faculty.location}</td>
<td>
<g:link action="edit" id="${faculty.id}">Edit</g:link>
<g:link action="delete" id="${faculty.id}">Delete</g:link>
</td>
</tr>
</g:each>
</table>

</body>
</html>