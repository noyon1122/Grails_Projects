<!DOCTYPE html>
<html lang="en">
<head>

    <title>Create Sale Certificate</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #f9f9f9 25%, #e0e0e0 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            color: #333;

        }

        .container {
            width: 100%;
            max-width: 600px;
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;

        }

        .container:hover {
            transform: translateY(-5px);
        }

        h1 {
            text-align: center;
            font-size: 2.5em;
            color: #007BFF;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin: 12px 0 5px;
            font-weight: bold;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }

        input:focus, select:focus {
            border-color: #007BFF;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
            outline: none;
        }

        .btn-submit {
            display: block;
            width: 100%;
            padding: 15px;
            background: #007BFF;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.3s ease;
            font-size: 1.2em;
        }

        .btn-submit:hover {
            background: #0056b3;
            transform: translateY(-3px);
        }

        .links {
            text-align: center;
            margin-bottom: 20px;
        }

        .links a {
            margin: 0 10px;
            color: #007BFF;
            text-decoration: none;
            transition: color 0.3s ease, text-shadow 0.3s ease;
        }

        .links a:hover {
            color: #0056b3;
            text-shadow: 0 0 3px rgba(0, 123, 255, 0.7);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Sales Certificate List</h1>

        <div class="links">
            <g:link controller="home" action="index">Home</g:link>
            <g:link action="create">New Sales Certificate</g:link>
        </div>

        <g:form action="save" method="POST">

            <label>Plaza Name</label>
            <g:textField name="plazaName" />

            <label>Customer</label>
            <g:textField name="customer" />

            <label>Sale Barcode</label>
            <g:textField name="barcode" />

            <label>Invoice No</label>
            <g:textField name="invoiceNo" />

            <label>Brand</label>
            <select name="brand">
                <option value="">-Choose-</option>
                <option value="TAKYON">TAKYON</option>
            </select>

            <label>Model</label>
            <select name="model">
                <option value="">-Choose-</option>
                <option value="TAKYON 1.00">TAKYON 1.00</option>
                <option value="TAKYON 1.20">TAKYON 1.20</option>
            </select>

            <label>Class Of Vehicle</label>
            <select name="classOfVehicle">
                <option value="">-Choose-</option>
                <option value="Electric Motorcycle">Electric Motorcycle</option>
            </select>

            <label>Chassis No</label>
            <g:textField name="chassisNo" />

            <label>Motor No</label>
            <g:textField name="motorNo" />

            <label>Battery Type</label>
            <select name="batteryType">
                <option value="">-Choose-</option>
                <option value="Graphene Based Battery">Graphene Based Battery</option>
                <option value="Lithium Ion">Lithium Ion</option>
            </select>

            <label>Battery Num</label>
            <select name="batteryNum">
                <option value="">-Choose-</option>
                <option value="1">1</option>
                <option value="6">6</option>
            </select>

            <label>Motor Power</label>
            <select name="motorPower">
                <option value="">-Choose-</option>
                <option value="1.2 KW">1.2 KW</option>
                <option value="1.5 KW">1.5 KW</option>
            </select>

            <label>Color</label>
            <select name="color">
                <option value="">-Choose-</option>
                <option value="red">RED</option>
                <option value="blue">Blue</option>
                <option value="gray">Gray</option>
            </select>

            <label>Weight</label>
            <select name="weight">
                <option value="">-Choose-</option>
                <option value="177">177</option>
                <option value="200">200</option>
            </select>

            <label>Year Of Manufacture</label>
            <g:field name="manufacYear" type="number" min="1900" max="2099" placeholder="YYYY" />

            <label>Wheel Base</label>
            <select name="wheelBase">
                <option value="">-Choose-</option>
                <option value="1320">1320</option>
                <option value="1210">1210</option>
            </select>

            <label>Tyre Size-F/R</label>
            <select name="tyreSize">
                <option value="">-Choose-</option>
                <option value="100/80-2 pcs">100/80-2 pcs</option>
                <option value="70/90-12 pcs">70/90-12 pcs</option>
            </select>

            <label>Number Of Motor</label>
            <select name="numberOfMotor">
                <option value="">-Choose-</option>
                <option value="1">1</option>
            </select>

            <g:submitButton name="Save" class="btn-submit"/>

        </g:form>
    </div>
</body>
</html>
