<html>
<head>
<meta name="layout" content="main"/>
</head>
<body>
<div style="font-size: 24px; font-weight: bold; margin: 5px; color: #2c3e50;">Plaza List</div>

<g:link action="create" style="display: inline-block; padding: 10px 10px; background-color: #3498db; color: white; text-decoration: none; border-radius: 8px; margin-bottom: 10px;">Add New Plaza</g:link>

<div style="margin: 5px;">
    <g:form action="search" method="GET" style="display: flex; gap: 10px; align-items: center;">
        <g:textField name="name" style="padding: 8px; border: 1px solid #ccc; border-radius: 5px; width: 200px;" placeholder="Search"/>

        <g:submitButton name="Search" style="padding: 8px 16px; background-color: #2ecc71; color: white; border: none; border-radius: 5px; cursor: pointer;"/>
    </g:form>
</div>


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