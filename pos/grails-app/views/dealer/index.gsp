<html lang="en">

<head>
    <title>Customer List</title>
    <g:render template="/layouts/heading" />
     <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
     <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
     <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <style>
            #accordion {
                width: 100%;
                margin: 20px 0;
            }
            #accordion h3 {
                background-color: #4CAF50;
                color: white;
                padding: 10px;
                margin: 0;
                font-size: 16px;
                cursor: pointer;
            }
            #accordion div {
                background-color: #f9f9f9;
                padding: 15px;
            }




      .body-div {
            margin: 0 80px; /* 40px margin on left and right */
            font-size: 14px; /* Smaller text size */
            font-family: Arial, sans-serif; /* Clean font */
        }

        /* Header styling */
        .header-div {
            font-size: 24px;
            font-weight: bold;

            padding:10px 5px;
            border: 1px solid #ddd;
            background-color:#eef6f6;

        }

         .application-div  {
        display: flex; /* Enables Flexbox */
        flex-direction: row; /* Stack items vertically */
        margin:10px 0px;
        gap:10px;

         }

        /* Form styling */
        .search-div{
        border: 1px solid #ddd;
        padding:15px 20px;

        }
        .search-form {
            margin-bottom: 20px;
            gap:10px;
             display: flex; /* Enables Flexbox */
            flex-direction: column;
            gap:10px;
        }

        .search-input {
            padding: 5px;
            font-size: 12px;
        }

        .search-submit {
            padding: 5px 10px;
            font-size: 12px;
            width:12%;
        }

        /* Table styling */
        .table-div {
            width: 100%;
            border-collapse: collapse;
        }

        .table-div th,
        .table-div td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
            font-size:12px;
        }

        .table-div th {

            font-weight: bold;
            font-size: 13px; /* Smaller table header */
        }

        /* Row hover effect */
        .table-row:hover {
            background-color: #f5f5f5;

        }

        /* Action links */
        .action-links .action-link {
            margin-right: 10px;
            text-decoration: none;
            color: #007bff;
            font-size: 12px; /* Smaller action text */
        }
    </style>

</head>

<body class="">

  <div class="body-div">
    <div class="header-div">Dealer List</div>
     <div class="application-div">
     <g:link action="" >Home</g:link>
     <g:link action="create" > New Dealer Application </g:link>

     </div>

      <div class="search-div">
          <g:form action="list" method="GET" class="search-form">
             <div>
              <g:textField name="saleNo"  class="search-input" placeholder="Enter Invoice Number" />
               <g:textField name="accountNo"  class="search-input" placeholder="Customer Account No" />
              <g:textField name="mobile"  class="search-input" placeholder="Customer Mobile No" />
              </div>
              <div>
               <input type="date" name="fromDate" class="search-input" />
               <input type="date" name="toDate" class="search-input" />

               </div>

              <g:submitButton name="search" value="Search" class="search-submit" />
          </g:form>
      </div>

     <table class="table-div">
<thead>
   <tr>
       <th>Code</th>
       <th>Plaza</th>
       <th>Dealer Name</th>
       <th>Mobile No.</th>
       <th>Showroom Size</th>
       <th>Showroom Address</th>
       <th>Previous Status</th>
       <th>Current Status</th>
       <th>Created Date</th>
       <th>Action</th>
   </tr>
</thead>

<tbody>
<g:each var="dealer" in="${dealers}">
   <tr class="dealer-row" onmouseover="this.classList.add('hover')" onmouseout="this.classList.remove('hover')">
       <td>${dealer.code}</td>
       <td>${dealer.plazaName}</td>
       <td>${dealer.dealerName}</td>
       <td>${dealer.phone}</td>
       <td>${dealer.showroomSize} sq feet</td>
       <td>${dealer.showroomAddress}</td>
       <td>${dealer.previousStatus}</td>
       <td>${dealer.currentStatus}</td>
       <td><g:formatDate date="${dealer.createdDate}" format="MM/dd/yyyy" /></td>
       <td class="dealer-actions">
           <g:link action="edit" id="${dealer.id}" class="dealer-action edit"> Edit</g:link>
           <g:link action="delete" onclick="return confirm('Are you sure???')" id="${dealer.id}" class="dealer-action delete"> Delete</g:link>
           <g:link action="view" id="${dealer.id}" class="dealer-action view"> View</g:link>
       </td>
   </tr>
</g:each>
</tbody>
        </table>
  </div>

<div id="accordion">
    <h3>Dealer Info</h3>
    <div>
        <p>Name: XYZ Dealer<br>Location: Dhaka</p>
    </div>
    <h3>Upload Files</h3>
    <div>
        <p>You can upload your documents here.</p>
    </div>
</div>

<script>
    $(document).ready(function() {
        $("#accordion").accordion({
            collapsible: true,
            active: false,
            heightStyle: "content"
        });
    });
</script>
</body>
</html>