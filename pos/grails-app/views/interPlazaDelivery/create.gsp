<html>
<head>
<title>Create Inter Plaza Delivery List </title>
<meta name="layout" content="main"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
</head>
<body>

<main>
<div>
<div>
<h1>Add Inter Plaza Delivery List</h1>
</div>
<div>
<g:form action="add" method="POST">
<label>Code </label>
<g:textField name="code" />
<label>Delivery From </label>
<g:textField name="deliveryFrom" />
<label>Delivery To </label>
<g:textField name="deliveryTo" />
<label>Disbursed Qty </label>
<g:field name="disbursedQty" />
<label> Received Qty </label>
<g:field name="receivedQty" />

<label for="createdDate">Created Date</label>
 <input type="date" id="createdDate" name="createdDate" />

<g:submitButton name="Save" />
</g:form>
</div>
</div>
</main>
</body>
</html>