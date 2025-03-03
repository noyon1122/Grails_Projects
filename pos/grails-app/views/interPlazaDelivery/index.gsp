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

<main>
<div>
<div>
<g:link action="index" >Home </g:link>
<g:link action="create" >New InterPlazaDelivery </g:link>
</div>
<div>
<g:form action="search" method="POST" >
<div>
<label>Delivery From</label>

<label>Delivery To</label>

</div>
<div>
<label>From Date</label>
<input type="date" name="fromDate"/>
<label>To Date</label>
<input type="date" name="toDate" />
</div>
<div>
<label>Code </label>
<g:textField name="code" />
</div>
<g:submitButton name="Search" />
</g:form>
</div>
</div>
<div>
<table border="1">
 <tr>
 <th>Code</th>
 <th>Delivery From Plaza</th>
 <th>Delivery To Plaza</th>
 <th>Disbursed Qty</th>
 <th>Received Qty</th>
 <th>Created Date</th>
 <th>Action</th>

 <g:each var="interPlaza" in="${interPlazaDeliveryLists}" >
 <tr>
 <td>${interPlaza.code}</td>
 <td>${interPlaza.deliveryFrom}</td>
 <td>${interPlaza.deliveryTo}</td>
 <td>${interPlaza.disbursedQty}</td>
 <td>${interPlaza.receivedQty}</td>
 <td><g:formatDate date="${interPlaza.createdDate}" format="dd/MM/yyyy" /></td>
 <td><g:link action="view" id="${interPlaza.id}"> View</g:link></td>
 </tr>
 </g:each>
 </tr>
 </table>
</div>
</main>
</body>
</html>