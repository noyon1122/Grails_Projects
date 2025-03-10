<html lang="en">

<head>
    <title>Create Inter Plaza Delivery List</title>
    <g:render template="/layouts/heading" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
</head>

<body class="delivery-body">

    <div class="page-title">Add Inter Plaza Delivery List</div>

    <div class="nav-links">
        <g:link action="index" class="nav-link">📋 Delivery List</g:link>
        <g:link action="create" class="nav-link">➕ Create New Delivery</g:link>
    </div>

    <div class="form-container">
        <g:form action="add" method="POST" class="delivery-form">

            <label for="code">Code</label>
            <g:textField name="code" id="code" class="form-input" placeholder="Enter code" /> <br>

            <label for="deliveryFrom">Delivery From</label>
            <g:textField name="deliveryFrom" id="deliveryFrom" class="form-input" placeholder="Enter delivery from" /> <br>

            <label for="deliveryTo">Delivery To</label>
            <g:textField name="deliveryTo" id="deliveryTo" class="form-input" placeholder="Enter delivery to" /> <br>

            <label for="disbursedQty">Disbursed Qty</label>
            <g:field name="disbursedQty" id="disbursedQty" class="form-input" placeholder="Enter disbursed quantity" /> <br>

            <label for="receivedQty">Received Qty</label>
            <g:field name="receivedQty" id="receivedQty" class="form-input" placeholder="Enter received quantity" />
<br>
            <label for="createdDate">Created Date</label>
            <input type="date" id="createdDate" name="createdDate" class="form-input" /> <br>

            <g:submitButton name="Save" value="Save" class="submit-button" />
        </g:form>
    </div>

</body>

</html>
