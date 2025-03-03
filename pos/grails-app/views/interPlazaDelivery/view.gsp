<html>
<head>
<title>Inter Plaza Delivery List</title>
<meta name="layout" content="main"/>
</head>
<body>
<header>
<div>
<h2>Transfer Do List</h2>
</div>
</header>

<div>
<h1>Transfer Information</h1>
</div>

<div>
<p>Plaza: ${interPlaza.deliveryTo} </p>
<p>Delivery No: ${interPlaza.code}</p>
<p>Remarks : </p>
</div>

<div>
<table border="1">
<tr>
<th>SI.</th>
<th>Item</th>
<th>barcode</th>
<th>Disbursed Quantity</th>
</tr>

<g:each var="interPlaza" in="${interPlazaDeliveryLists}">
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</g:each>
</table>
</div>


</body>
</html>