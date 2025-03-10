<!DOCTYPE html>
<html lang="en">

<head>
    <title>Create Sale Certificate</title>
    <g:render template="/layouts/heading" />
</head>

<body class="dealer-body">

    <div class="page-title">Sales Certificate List</div>

    <div class="nav-links">
        <g:link controller="home" action="index" class="nav-link">🏠 Home</g:link>
        <g:link action="create" class="nav-link">➕ New Sales Certificate</g:link>
    </div>

    <div class="form-container">
        <g:form action="save" method="POST" class="dealer-form">

            <label>Plaza Name</label>
            <g:textField name="plazaName" class="form-input" placeholder="Enter Plaza Name" /> <br>

            <label>Customer</label>
            <g:textField name="customer" class="form-input" placeholder="Enter Customer" /> <br>

            <label>Sale Barcode</label>
            <g:textField name="barcode" class="form-input" placeholder="Enter Sale Barcode" /> <br>

            <label>Invoice No</label>
            <g:textField name="invoiceNo" class="form-input" placeholder="Enter Invoice No" /> <br>

            <label>Brand</label>
            <select name="brand" class="form-input">
                <option value="">-Choose-</option>
                <option value="TAKYON">TAKYON</option>
            </select> <br>

            <label>Model</label>
            <select name="model" class="form-input">
                <option value="">-Choose-</option>
                <option value="TAKYON 1.00">TAKYON 1.00</option>
                <option value="TAKYON 1.20">TAKYON 1.20</option>
            </select> <br>

            <label>Class Of Vehicle</label>
            <select name="classOfVehicle" class="form-input">
                <option value="">-Choose-</option>
                <option value="Electric Motorcycle">Electric Motorcycle</option>
            </select> <br>

            <label>Chassis No</label>
            <g:textField name="chassisNo" class="form-input" placeholder="Enter Chassis No" /> <br>

            <label>Motor No</label>
            <g:textField name="motorNo" class="form-input" placeholder="Enter Motor No" /> <br>

            <label>Battery Type</label>
            <select name="batteryType" class="form-input">
                <option value="">-Choose-</option>
                <option value="Graphene Based Battery">Graphene Based Battery</option>
                <option value="Lithium Ion">Lithium Ion</option>
            </select> <br>

            <label>Battery Num</label>
            <select name="batteryNum" class="form-input">
                <option value="">-Choose-</option>
                <option value="1">1</option>
                <option value="6">6</option>
            </select> <br>

            <label>Motor Power</label>
            <select name="motorPower" class="form-input">
                <option value="">-Choose-</option>
                <option value="1.2 KW">1.2 KW</option>
                <option value="1.5 KW">1.5 KW</option>
            </select> <br>

            <label>Color</label>
            <select name="color" class="form-input">
                <option value="">-Choose-</option>
                <option value="red">RED</option>
                <option value="blue">Blue</option>
                <option value="gray">Gray</option>
            </select> <br>

            <label>Weight</label>
            <select name="weight" class="form-input">
                <option value="">-Choose-</option>
                <option value="177">177</option>
                <option value="200">200</option>
            </select> <br>

            <label>Year Of Manufacture</label>
            <g:field name="manufacYear" type="number" min="1900" max="2099" class="form-input" placeholder="YYYY" /> <br>

            <label>Wheel Base</label>
            <select name="wheelBase" class="form-input">
                <option value="">-Choose-</option>
                <option value="1320">1320</option>
                <option value="1210">1210</option>
            </select> <br>

            <label>Tyre Size-F/R</label>
            <select name="tyreSize" class="form-input">
                <option value="">-Choose-</option>
                <option value="100/80-2 pcs">100/80-2 pcs</option>
                <option value="70/90-12 pcs">70/90-12 pcs</option>
            </select> <br>

            <label>Number Of Motor</label>
            <select name="numberOfMotor" class="form-input">
                <option value="">-Choose-</option>
                <option value="1">1</option>
            </select> <br>

            <g:submitButton name="Save" value="Save" class="submit-button" />

        </g:form>
    </div>

</body>

</html>
