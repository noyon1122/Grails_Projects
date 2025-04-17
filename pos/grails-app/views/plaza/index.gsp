<html lang="en">

<head>
    <title>Customer List</title>
    <g:render template="/layouts/heading" />

    <style>
        /* Add left and right margin */
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
    <div class="header-div">Plaza List</div>
     <div class="application-div">
     <g:link action="" >Home</g:link>
     <g:link action="add" > New Plaza Application </g:link>

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
               <th>Plaza Id</th>
               <th>Name</th>
               <th>Email</th>
               <th>Phone</th>
               <th>Address</th>
               <th>Status</th>
               <th>Vat</th>
               <th>Action</th>
            </tr>
            </thead>

            <tbody>
            <g:each var="plaza" in="${plazas}">
            <tr class="table-row" onmouseover="this.classList.add('hover')" onmouseout="this.classList.remove('hover')">
                <td>${plaza.id}</td>
                <td>${plaza.name}</td>
                <td>${plaza.email}</td>
                <td>${plaza.phone}</td>
                <td>${plaza.address}</td>
                <td>${plaza.status}</td>
                <td>${plaza.vat}</td>
                <td class="action-links">
                    <g:link action="edit" id="${plaza.id}" class="edit-link"> Edit</g:link>
                    <g:link action="delete" id="${plaza.id}" class="delete-link" onclick="return confirm('Are you sure?')"> Delete</g:link>
                </td>
            </tr>
            </g:each>
            </tbody>
        </table>
  </div>
</body>
</html>