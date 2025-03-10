<html lang="en">

<head>
    <title>Retail Sale</title>
    <g:render template="/layouts/heading" />
</head>

<body class="dealer-body">

    <div class="page-title">Add New Product</div>


    <div class="form-container">
        <g:form action="add" method="POST" class="dealer-form">

            <div class="form-group">
             <label for="dealerName">Select Model:</label>
               <g:select name="model" id="model" class="form-input"
               from="${productList}" optionKey="id" optionValue="model"
                noSelection="['':'-- Select Dealer --']" /><br>

          <label for="organization">Organization</label>
           <g:textField name="organization" id="organization" class="form-input" placeholder="Enter Organization" /> <br>

            <div class="form-group">
            <label for="productId">Product Id</label>
            <g:field name="productId" id="productId" class="form-input" placeholder="Enter Product Id" /> <br>

            <label for="code">Code</label>
            <g:field name="code" id="code" class="form-input" placeholder="Enter code" /> <br>

            </div>

            <div class="form-group">
               <label for="isActive">Is Active:</label>
               <g:checkBox name="isActive" id="isActive"  class="form-input" checked="${yourObject?.isActive}" />
               <br>


                <label for="description">Description</label>
                <g:textField name="description" id="description" class="form-input" placeholder="Enter Description" /> <br>
            </div>

            <g:submitButton name="Add New Dealer" value="Add New Dealer" class="submit-button" />
        </g:form>
    </div>

</body>

</html>