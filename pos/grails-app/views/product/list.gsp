<html lang="en">
<head>
    <title>Product List</title>
     <g:render template="/layouts/heading" />

</head>
<body class="sale-body">
    <div class="sale-header">Product List</div>
    <div class="sale-search">
        <g:form action="search" method="GET" class="sale-form">
            <g:textField name="invoiceNo" class="sale-input" />
            <g:submitButton name="Search" value="Search" class="sale-submit" />
        </g:form>
    </div>
     <div>
     <g:link action="create">New Product list</g:link>
     </div>
    <table class="sale-table">
        <thead>
            <tr>
                <th>Model</th>
                <th>Organigation</th>
                <th>Code</th>
                <th>Pos Product Id</th>
                <th>Is Active?</th>
                <th>Description</th>
                <th>Action</th>
            </tr>
        </thead>

        <tbody>
            <g:each var="product" in="${products}">
                <tr class="sale-row" onmouseover="this.classList.add('hover')" onmouseout="this.classList.remove('hover')">
                    <td>${product.model}</td>
                    <td>${product.organization}</td>
                    <td>${product.code}</td>
                    <td>${product.productId}</td>
                    <td>${product.isActive}</td>
                    <td>${product.description}</td>


                    <td class="sale-actions">
                        <g:link action="view" id="${sale.id}" class="sale-action view">View</g:link>
                    </td>
                </tr>
            </g:each>
        </tbody>
    </table>
</body>
</html>
