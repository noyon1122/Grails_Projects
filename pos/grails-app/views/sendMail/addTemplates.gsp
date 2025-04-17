<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Email Templates</title>

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
<body >

   <div class="body-div">
    <h2>Add your template</h2>

       <g:form action="saveTemplate" method="POST">

           <label>Code:</label><br>
           <input name="code" required> <br><br>

           <label>Your Template:</label><br>
           <textarea name="body" rows="8" cols="50" required>
           </textarea><br><br>

           <button type="submit">Save</button>
       </g:form>
   </div>
</body>
</html>
