<html lang="en">

<head>
    <title>Dealer Application List</title>
    <g:render template="/layouts/heading" />

    <style>
        /* Add left and right margin */
      .sale-body {
            margin: 0 80px; /* 40px margin on left and right */
            font-size: 14px; /* Smaller text size */
            font-family: Arial, sans-serif; /* Clean font */
        }

        /* Header styling */
        .sale-header {
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
        .sale-table {
            width: 100%;
            border-collapse: collapse;
        }

        .sale-table th,
        .sale-table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        .sale-table th {

            font-weight: bold;
            font-size: 13px; /* Smaller table header */
        }

        /* Row hover effect */
        .sale-row:hover {
            background-color: #f5f5f5;

        }

        /* Action links */
        .sale-actions .sale-action {
            margin-right: 10px;
            text-decoration: none;
            color: #007bff;
            font-size: 12px; /* Smaller action text */
        }
    </style>
</head>

<body class="">

  <div class="sale-body">
    <div class="sale-header">Dealer Application List</div>
     <div class="application-div">
     <g:link action="" >Home</g:link>
     <g:link action="" > Processing List </g:link>
     <g:link action="add" > New Dealer Application </g:link>
     <g:link action="add" > New Corporate Application </g:link>
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

      <table class="sale-table">
          <thead>
              <tr>
                  <th>Code</th>
                  <th>Plaza</th>
                  <th>Dealer Name</th>
                  <th>Mobile Number1</th>
                  <th>Showroom Size</th>
                  <th>Previous Status</th>
                  <th>Current Status</th>
                  <th>Created Date</th>
                  <th>Action</th>
              </tr>
          </thead>

          <tbody>
              <g:each var="sale" in="${sales}">
                  <tr class="sale-row" onmouseover="this.classList.add('hover')" onmouseout="this.classList.remove('hover')">
                      <td>${sale.saleNo}</td>
                      <td>${sale.customer.customerName}</td>
                      <td>${sale.saleType}</td>
                      <td>${sale.priceType}</td>
                      <td>${sale.grandTotal}</td>
                      <td>${sale.cash}</td>
                      <td><g:formatDate format="MMMM d, yyyy" date="${sale.saleDate}" /></td>

                      <td class="sale-actions">
                          <g:link action="show" id="${sale.id}" class="sale-action view">View</g:link>
                      </td>
                  </tr>
              </g:each>
          </tbody>
      </table>
  </div>

</body>

</html>