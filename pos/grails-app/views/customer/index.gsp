<html lang="en">
<head>
    <title>Customer List</title>
  <g:render template="/layouts/heading" />
</head>

<body class="customer-body">

    <div class="page-title">Customer List</div>

    <div class="search-container">
        <g:form action="search" method="GET" class="search-form">
            <g:textField name="name" placeholder="🔍 Name" class="search-input"/>
            <g:textField name="type" placeholder="🔍 Type" class="search-input"/>
            <g:submitButton name="Search" value="Search" class="search-button"/>
        </g:form>
    </div>

    <div class="nav-links">
        <g:link action="index" class="nav-link">📋 Customer List</g:link>
        <g:link action="create" class="nav-link">➕ Create new Customer</g:link>
        <g:link action="dealer" class="nav-link">🔍 Dealer List</g:link>
        <g:link action="createdealer" class="nav-link">➕ Create new Dealer</g:link>
    </div>

    <table class="customer-table">
        <thead>
            <tr>
                <th>A/C No.</th>
                <th>Name</th>
                <th>Type</th>
                <th>Product</th>
                <th>Mobile</th>
                <th>Current Balance</th>
                <th>Is Litigate?</th>
                <th>Is Recovery?</th>
                <th>Action</th>
            </tr>
        </thead>

        <tbody>
            <g:each var="customer" in="${customers}">
                <tr class="customer-row" onmouseover="this.classList.add('hover')" onmouseout="this.classList.remove('hover')">
                    <td>${customer.accountNo}</td>
                    <td>${customer.customerName}</td>
                    <td>${customer.type}</td>
                    <td>${customer.product}</td>
                    <td>${customer.mobile}</td>
                    <td>${customer.balance}</td>
                    <td>${customer.isLitigate}</td>
                    <td>${customer.isRecovery}</td>
                    <td class="action-links">
                        <g:link action="edit" id="${customer.id}" class="edit-link">✏️ Edit</g:link>
                        <g:link action="delete" id="${customer.id}" onclick="return confirm('Are you sure???')" class="delete-link">🗑️ Delete</g:link>
                        <g:link action="view" id="${customer.id}" class="view-link">👁️ View</g:link>
                    </td>
                </tr>
            </g:each>
        </tbody>
    </table>

</body>
</html>
