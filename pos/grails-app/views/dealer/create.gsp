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
        <g:form action="save" method="POST" class="dealer-form">

            <div class="form-group">
                <label for="code">Code</label>
                <g:textField name="code" id="code" class="form-input" placeholder="Enter code" /> <br>

                <label for="plazaName">Plaza Name</label>
                <g:textField name="plazaName" id="plazaName" class="form-input" placeholder="Enter plaza name" /> <br>
            </div>

            <div class="form-group">
                <label for="dealerName">Dealer Name</label>
                <g:textField name="dealerName" id="dealerName" class="form-input" placeholder="Enter dealer name" /> <br>

                <label for="phone">Mobile</label>
                <g:textField name="phone" id="phone" class="form-input" placeholder="Enter mobile number" /> <br>
            </div>

            <div class="form-group">
                <label for="showroomSize">Showroom Size</label>
                <g:field type="number" name="showroomSize" id="showroomSize" class="form-input" placeholder="Enter showroom size" /> <br>

                <label for="showroomAddress">Showroom Address</label>
                <g:textField name="showroomAddress" id="showroomAddress" class="form-input" placeholder="Enter showroom address" /> <br>
            </div>

            <div class="form-group">
                <label for="currentStatus">Current Status</label>
                <g:textField name="currentStatus" id="currentStatus" class="form-input" placeholder="Enter current status" /> <br>

                <label for="previousStatus">Previous Status</label>
                <g:textField name="previousStatus" id="previousStatus" class="form-input" placeholder="Enter previous status" /> <br>
            </div>

            <g:submitButton name="Add New Dealer" value="Add New Dealer" class="submit-button" />
        </g:form>
    </div>

</body>

</html>