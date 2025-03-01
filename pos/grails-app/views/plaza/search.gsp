<html>
<head>
<meta name="layout" content="main"/>
</head>
<body>
<div>Plaza List</div>


<table border="1">
<tr>
<th>Plaza Id</th>
<th>Name</th>
<th>Email</th>
<th>Phone</th>
<th>Address</th>
<th>Status</th>
<th>Vat</th>
<th>Action</th>
</tr>
<g:each var="plaza" in="${plazas}">
<tr>
<td>${plaza.id}</td>
<td>${plaza.name}</td>
<td>${plaza.email}</td>
<td>${plaza.phone}</td>
<td>${plaza.address}</td>
<td>${plaza.status}</td>
<td>${plaza.vat}</td>
<td>
<g:link action="edit" id="${plaza.id}">Edit</g:link>
<g:link action="delete" id="${plaza.id}">Delete</g:link>
</td>
</tr>
</g:each>
</table>


</body>
</html>