<html lang="en">

<head>
    <title>Sales List</title>
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
            margin-bottom: 20px;
            padding:10px 5px;
            border: 1px solid #ddd;
            background-color:#eef6f6;

        }

        /* Form styling */
        .sale-form {
            margin-bottom: 20px;
        }

        .sale-input {
            padding: 5px;
            font-size: 12px; /* Smaller input text */
        }

        .sale-submit {
            padding: 5px 10px;
            font-size: 12px; /* Smaller button text */
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
    <div class="sale-header">Sales List</div>

      <div class="sale-search">
          <g:form action="list" method="GET" class="sale-form">
             <div>
              <g:textField name="saleNo"  class="sale-input" placeholder="Enter Invoice Number" />
               <g:textField name="accountNo"  class="sale-input" placeholder="Customer Account No" />
              <g:textField name="mobile"  class="sale-input" placeholder="Customer Mobile No" />
              </div>
              <div>
               <input type="date" name="fromDate" class="sale-input" />
               <input type="date" name="toDate" class="sale-input" />

               </div>

              <g:submitButton name="search" value="Search" class="sale-submit" />
          </g:form>
      </div>

      <table class="sale-table">
          <thead>
              <tr>
                  <th>Sale No</th>
                  <th>Customer</th>
                  <th>Sales Type</th>
                  <th>Price Type</th>
                  <th>Grand Total</th>
                  <th>Cash Received</th>
                  <th>Sales Date</th>
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