<html>
<head>
<meta name="layout" content="main"/>
</head>
<body>
<table border="1">
<tr>
<th>Name</th>
<th>Department</th>
<th>Phone</th>
<th>Action</th>
</tr>

 <g:each in="${students}" var="student">
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
<html/>