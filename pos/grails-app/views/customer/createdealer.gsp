<!DOCTYPE html>
<html lang="en">

<head>
    <title>Add New Dealer</title>
    <g:render template="/layouts/heading" />
</head>

<body class="dealer-body">

    <div class="page-title">Add New Dealer</div>

    <div class="nav-links">
        <g:link action="index" class="nav-link">📋 Dealer List</g:link>
        <g:link action="create" class="nav-link">➕ Create New Dealer</g:link>
    </div>

    <div class="form-container">
        <g:form action="dealersave" method="POST" class="dealer-form">

            <div class="form-group">
                <label for="accountNo">A/C No.</label>
                <g:textField name="accountNo" id="accountNo" class="form-input" placeholder="Enter account number" /><br>

                <label for="customerName">Name</label>
                <g:textField name="customerName" id="customerName" class="form-input" placeholder="Enter customer name" /><br>
            </div>

            <div class="form-group">
                <label for="type">Type</label>
                <g:textField name="type" id="type" value="Hire" class="form-input" placeholder="Enter type" /><br>

                <label for="product">Product</label>
                <g:textField name="product" id="product" class="form-input" placeholder="Enter product" /><br>
            </div>

            <div class="form-group">
                <label for="mobile">Mobile</label>
                <g:textField name="mobile" id="mobile" class="form-input" placeholder="Enter mobile number" /><br>

                <label for="balance">Current Balance</label>
                <g:field name="balance" id="balance" type="number" class="form-input" placeholder="Enter current balance" /><br>
            </div>

            <div class="form-group">
                <label for="isLitigate">Is Litigate</label>
                <g:textField name="isLitigate" id="isLitigate" class="form-input" placeholder="Enter litigation status" /><br>

                <label for="isRecovery">Is Recovery</label>
                <g:textField name="isRecovery" id="isRecovery" class="form-input" placeholder="Enter recovery status" /><br>
            </div>

            <g:submitButton name="Add New Dealer" value="Add New Dealer" class="submit-button" />
        </g:form>
    </div>

</body>

</html>
