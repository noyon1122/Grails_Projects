<html>
<head>
<title>Sale Certificate List</title>
<meta name="layout" content="main"/>

<style>

th,td{
  font-size: 12px;
}
.search-div{
 font-size: 13px;
}
label{
font-weight: bold;
}
</style>
</head>


<body>

<div>
<h1>Sales Certificate list</h1>
</div>
<div>
<g:link action="index">Home</g:link>
<g:link action="create">New Sales Certificate</g:link>
</div>
<div class="search-div">
<g:form action="search" method="GET">
<label>Plaza</label>
<g:select name="plazaName" from="${sales}" optionValue="plazaName" optionKey="id" />
<label>Invoice No</label>
<g:textField name="invoiceNo" />
<label>Chassis No</label>
<g:textField name="chassisNo" />

<g:submitButton name="Search" />
</g:form>
</div>



<table border="1">
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

<g:each var="sale" in="${sales}" >
<tr>
<td>${sale.plazaName}</td>
<td>${sale.invoiceNo}</td>
<td>${sale.customer}</td>
<td>${sale.brand}</td>
<td>${sale.model}</td>
<td>${sale.chassisNo}</td>
<td>${sale.motorNo}</td>
<td><g:formatDate date="${sale.createdDate}" format="MM/dd/yyyy" /></td>
<td><g:link action="view" id="${sale.id}"> View</g:link></td>
</tr>
</g:each>
</tr>
</table>
</body>
</html>