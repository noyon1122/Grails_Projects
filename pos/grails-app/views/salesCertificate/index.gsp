<html lang="en">
<head>
    <title>Sale Certificate List</title>
     <g:render template="/layouts/heading" />
</head>
<body class="sale-body">
    <div class="sale-header">Sales Certificate List</div>
    <div class="sale-links">
        <g:link action="index" class="sale-link"><i class="fa fa-home"></i> Home</g:link>
        <g:link action="create" class="sale-link"><i class="fa fa-plus-circle"></i> New Sales Certificate</g:link>
    </div>
    <div class="sale-search">
        <g:form action="search" method="GET" class="sale-form">
            <label for="invoiceNo">Invoice No</label>
            <g:textField name="invoiceNo" class="sale-input" />
            <label for="chassisNo">Chassis No</label>
            <g:textField name="chassisNo" class="sale-input" />
            <g:submitButton name="Search" value="Search" class="sale-submit" />
        </g:form>
    </div>
    <table class="sale-table">
        <thead>
            <tr>
                <th>Plaza</th>
                <th>Invoice No</th>
                <th>Customer</th>
                <th>Brand</th>
                <th>Model</th>
                <th>Chassis No</th>
                <th>Motor No</th>
                <th>Entry Date</th>
                <th>Action</th>
            </tr>
        </thead>

        <tbody>
            <g:each var="sale" in="${sales}">
                <tr class="sale-row" onmouseover="this.classList.add('hover')" onmouseout="this.classList.remove('hover')">
                    <td>${sale.plazaName}</td>
                    <td>${sale.invoiceNo}</td>
                    <td>${sale.customer}</td>
                    <td>${sale.brand}</td>
                    <td>${sale.model}</td>
                    <td>${sale.chassisNo}</td>
                    <td>${sale.motorNo}</td>
                    <td><g:formatDate date="${sale.createdDate}" format="MM/dd/yyyy" /></td>
                    <td class="sale-actions">
                        <g:link action="view" id="${sale.id}" class="sale-action view">View</g:link>
                    </td>
                </tr>
            </g:each>
        </tbody>
    </table>
</body>
</html>
