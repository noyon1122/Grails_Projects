<!DOCTYPE html>
<html lang="en">
<head>
    <title>New Dealer Application</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;

            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            box-sizing: border-box;
        }

        .container {
            background: #ffffff;
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.25);
            max-width: 900px;
            width: 100%;
            box-sizing: border-box;
            animation: fadeIn 0.5s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        .title {
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 30px;
            text-align: center;
            color: #2c3e50;
        }

        .form-group {
            display: flex;
            gap: 30px;
            margin-bottom: 20px;
        }

        .form-control {
            flex: 1;
            display: flex;
            flex-direction: column;
        }

        label {
            font-weight: 600;
            margin-bottom: 8px;
            color: #34495e;
        }

        input {
            padding: 12px;
            border: 2px solid #bdc3c7;
            border-radius: 10px;
            transition: border 0.3s;
            font-size: 14px;
            outline: none;
        }

        input:focus {
            border-color: #4e54c8;
        }

        .submit-btn {
            margin-top: 20px;
            padding: 14px 20px;
            background: #2db7f7;
            color: white;
            border: none;
            border-radius: 12px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s;
        }

        .submit-btn:hover {
            background: #27ae60;
        }

        @media (max-width: 768px) {
            .form-group {
                flex-direction: column;
                gap: 15px;
            }

            .container {
                padding: 20px;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <div class="title">Add New Dealer</div>

        <g:form action="save" method="POST">

            <div class="form-group">
                <div class="form-control">
                    <label>Code</label>
                    <g:textField name="code" />
                </div>
                <div class="form-control">
                    <label>Plaza Name</label>
                    <g:textField name="plazaName" />
                </div>
            </div>

            <div class="form-group">
                <div class="form-control">
                    <label>Dealer Name</label>
                    <g:textField name="dealerName" />
                </div>
                <div class="form-control">
                    <label>Mobile</label>
                    <g:textField name="phone" />
                </div>
            </div>

            <div class="form-group">
                <div class="form-control">
                    <label>Showroom Size</label>
                    <g:field type="number" name="showroomSize" />
                </div>
                 <div class="form-control">
                     <label>Showroom Address</label>
                     <g:textField name="showroomAddress" />
                 </div>

            </div>

            <div class="form-group">
                <div class="form-control">
                    <label>Current Status</label>
                    <g:textField name="currentStatus" />
                </div>
               <div class="form-control">
                     <label>Previous Status</label>
                     <g:textField name="previousStatus" />
               </div>

            </div>

            <g:submitButton name="Add New Dealer" class="submit-btn" />

        </g:form>
    </div>

</body>
</html>
