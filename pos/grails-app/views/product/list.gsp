<html lang="en">
<head>
    <title>Product List</title>
     <g:render template="/layouts/heading" />

</head>
<body class="product-body">
    <div class="product-header">Product List</div>
    <div class="product-search">
        <g:form action="search" method="GET" class="product-form">
            <g:textField name="invoiceNo" class="product-input" />
            <g:submitButton name="Search" value="Search" class="product-submit" />
        </g:form>
    </div>
     <div>
     <g:link action="create">New Product list</g:link>
     </div>
    <table class="product-table">
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
                <tr class="product-row" onmouseover="this.classList.add('hover')" onmouseout="this.classList.remove('hover')">
                    <td>${product.model}</td>
                    <td>${product.organization}</td>
                    <td>${product.code}</td>
                    <td>${product.productId}</td>
                    <td>${product.isActive}</td>
                    <td>${product.description}</td>


                    <td class="product-actions">
                        <g:link action="view" id="${product.id}" class="product-action view">View</g:link>
                    </td>
                </tr>
            </g:each>
        </tbody>
    </table>
</body>
</html>
