<html>
<head>

    <title>Plaza List</title>
      <g:render template="/layouts/heading" />


</head>
<body>

    <!-- Page Title -->
    <div class="page-title">Plaza List</div>

    <!-- Add New Plaza Link -->
    <div class="nav-links">
        <g:link action="create">➕ Add New Plaza</g:link>
    </div>

    <!-- Search Form -->
    <div class="search-container">
        <g:form action="search" method="GET" style="display: flex; gap: 15px; align-items: center;">
            <g:textField name="name" class="search-input" placeholder="🔍 Search"/>
            <g:submitButton name="Search" value="Search" class="search-button"/>
        </g:form>
    </div>

    <!-- Plaza Table -->
    <table class="customer-table">
        <thead>
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
        </thead>
        <tbody>
            <g:each var="plaza" in="${plazas}">
                <tr>
                    <td>${plaza.id}</td>
                    <td>${plaza.name}</td>
                    <td>${plaza.email}</td>
                    <td>${plaza.phone}</td>
                    <td>${plaza.address}</td>
                    <td>${plaza.status}</td>
                    <td>${plaza.vat}</td>
                    <td class="action-links">
                        <g:link action="edit" id="${plaza.id}" class="edit-link">✏️ Edit</g:link>
                        <g:link action="delete" id="${plaza.id}" class="delete-link" onclick="return confirm('Are you sure?')">🗑️ Delete</g:link>
                    </td>
                </tr>
            </g:each>
        </tbody>
    </table>

</body>
</html>
