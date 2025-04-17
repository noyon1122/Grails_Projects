<html lang="en">

<head>
    <title>Customer List</title>
    <g:render template="/layouts/heading" />

    <style>
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
    <div class="header-div">Minio List</div>
     <div class="application-div">
     </div>

 <div class="search-div">
 <h2>Upload File</h2>

<g:form useToken="true" action="upload" method="POST" enctype="multipart/form-data">
    <input type="file" name="pdfFile" required />
    <button type="submit">Upload</button>
</g:form>

<g:if test="${flash.message}">
    <div class="message" style="color: green; margin-bottom: 10px;">
        ${flash.message}
    </div>
</g:if>
      </div>

<table class="table-div">
<thead>
<tr>
    <th>Filename</th>
    <th>Download Link</th>
</tr>
</thead>

<tbody>
<g:each var="file" in="${fileList}">
            <tr>
                <td>${file.fileName}</td>
                <td><a href="${file.fileUrl}" target="_blank">Download</a></td>
            </tr>
</g:each>
</tbody>
</table>
  </div>
</body>
