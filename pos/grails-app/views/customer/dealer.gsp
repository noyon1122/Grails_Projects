<html lang="en">

<head>
    <title>Dealer List</title>
    <g:render template="/layouts/heading" />
</head>

<body class="dealer-body">

    <div class="page-title">Dealer List</div>

    <div class="search-container">
        <g:form action="search" method="GET" class="search-form">
            <g:textField name="name" placeholder="🔍 Name" class="search-input" value="${params.name}" />
            <g:textField name="type" placeholder="🔍 Type" class="search-input" value="${params.type}" />
            <g:submitButton name="Search" value="Search" class="search-button" />
        </g:form>
    </div>

    <div class="nav-links">
        <g:link action="index" class="nav-link">📋 Customer List</g:link>
        <g:link action="create" class="nav-link">➕ Create new Customer</g:link>
        <g:link action="dealer" class="nav-link">🔍 Dealer List</g:link>
        <g:link action="createdealer" class="nav-link">➕ Create new Dealer</g:link>
    </div>

    <table class="dealer-table">
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
            <g:if test="${!customers}">
                <tr>
                    <td colspan="9" class="no-results">No dealers found.</td>
                </tr>
            </g:if>

            <g:each var="customer" in="${customers}">
                <tr class="dealer-row" onmouseover="this.classList.add('hover')" onmouseout="this.classList.remove('hover')">
                    <td>${customer.accountNo?.encodeAsHTML()}</td>
                    <td>${customer.customerName?.encodeAsHTML()}</td>
                    <td>${customer.type?.encodeAsHTML()}</td>
                    <td>${customer.product?.encodeAsHTML()}</td>
                    <td>${customer.mobile?.encodeAsHTML()}</td>
                    <td>${customer.balance?.encodeAsHTML()}</td>
                    <td>${customer.isLitigate ? '✔️' : '❌'}</td>
                    <td>${customer.isRecovery ? '✔️' : '❌'}</td>
                    <td class="action-links">
                        <g:link action="edit" id="${customer.id}" class="edit-link">✏️ Edit</g:link>
                        <g:link action="delete" id="${customer.id}" onclick="return confirm('Are you sure?')" class="delete-link">🗑️ Delete</g:link>
                        <g:link action="view" id="${customer.id}" class="view-link">👁️ View</g:link>
                    </td>
                </tr>
            </g:each>
        </tbody>
    </table>

</body>

</html>