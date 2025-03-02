<html>
<head>
<title>Sale Certificate List</title>
<meta name="layout" content="main"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">



<style>{

}
.heading
{
   background-color:#cff0f0;
   padding: 5px 50px;
   margin: 10px 0px;

}
h1{
color:black
}
th,td{
  font-size: 12px;
}

label{
font-weight: bold;
}
.search-div{

margin:10px 15px;
font-size: 13px;

}
.button-div{
 margin:10px 20px;
  gap: 100px;

}
</style>
</head>


<body>

 <div class="container">
 <div class="heading">
 <h1>Sales Certificate list</h1>
 </div>
 <div class="button-div">
 <g:link action="index">
     <i class="fa fa-home"></i> Home
 </g:link>

 <g:link action="create">
     <i class="fa fa-plus-circle"></i> New Sales Certificate
 </g:link>
 </div>
 <div class="search-div">
 <g:form action="search" method="GET">

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
 </div>
</body>
</html>