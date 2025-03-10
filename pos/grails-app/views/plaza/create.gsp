<html lang="en">

<head>
    <title>Add New Plaza</title>
    <g:render template="/layouts/heading" />
</head>

<body class="plaza-body">

    <div class="page-title">Add New Plaza</div>

    <div class="nav-links">
        <g:link action="index" class="nav-link">📋 Plaza List</g:link>
        <g:link action="create" class="nav-link">➕ Create New Plaza</g:link>
    </div>

    <div class="form-container">
        <g:form action="save" method="POST" class="plaza-form">

            <label for="name">Name</label>
            <g:textField name="name" id="name" class="form-input" placeholder="Enter name" /> <br>

            <label for="email">Email</label>
            <g:textField name="email" id="email" class="form-input" placeholder="Enter email" /> <br>

            <label for="phone">Phone</label>
            <g:textField name="phone" id="phone" class="form-input" placeholder="Enter phone" /> <br>

            <label for="address">Address</label>
            <g:textField name="address" id="address" class="form-input" placeholder="Enter address" /> <br>

            <label for="status">Status</label>
            <g:textField name="status" id="status" class="form-input" placeholder="Enter status" /> <br>

            <label for="vat">VAT</label>
            <g:textField name="vat" id="vat" class="form-input" placeholder="Enter VAT" /> <br>

            <g:submitButton name="Add Plaza" value="Add Plaza" class="submit-button" />
        </g:form>
    </div>

</body>

</html>
