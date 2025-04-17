<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add User</title>
    <g:render template="/layouts/heading" />
    <style>
     .body-div {
                margin: 0 80px; /* 40px margin on left and right */
                font-size: 14px; /* Smaller text size */
                font-family: Arial, sans-serif; /* Clean font */
            }
    </style>
</head>
<body>
   <div class="body-div">
    <h2>Add User</h2>

       <g:form action="save" method="POST">

           <label for="to">Name</label><br>
           <input type="text" name="name" required /><br><br>

           <label for="subject">Email:</label><br>
           <input type="text" name="email" required /><br><br>
           <label for="subject">Loan:</label><br>
           <input type="number" name="loan" required /><br><br>

           <button type="submit">Add</button>
       </g:form>
   </div>
</body>
</html>
