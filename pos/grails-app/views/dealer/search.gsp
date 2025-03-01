<!DOCTYPE html>
<html lang="en">
<head>
    <title>Dealer List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 20px;
            padding: 0 40px;
            color: #2c3e50;

        }

        .header {
            font-size: 32px;
            background-color:#497e91;
            padding: 15px;
            font-weight: bold;
            margin: 20px 0;
            color: white;
            border-radius: 12px;

        }

        .nav-links {
            margin-bottom: 20px;
            display: flex;
            gap: 20px;
        }

        .nav-links a {
            text-decoration: none;
            color: white;
            background-color: #32a89e;
            padding: 12px 20px;
            border-radius: 8px;
            transition: background 0.3s ease;
        }

        .nav-links a:hover {
            background-color: #2abb80;
        }

        table {
            width: 100%;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            border-radius: 12px;
        }

        th, td {
            padding: 14px;
            text-align: left;
        }

        th {
            background: linear-gradient(135deg, #1abc9c, #16a085);
            color: white;
        }

        tr:nth-child(even) {
            background-color: #ecf0f1;
        }

        tr:hover {
            background-color: #d1f2eb;
        }

        .action-links {
            display: flex;
            gap: 10px;
        }

        .action-links a {
            text-decoration: none;
            transition: color 0.3s;

        }

        .edit-link { color: #3498db; }
        .delete-link { color: red;}
        .view-link { color: #2ecc71; }

        .action-links a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="header">Dealer List</div>

    <div class="nav-links">
        <g:link action="index">📋 Home</g:link>
        <g:link action="process">Processing List</g:link>
        <g:link action="create">➕ Create new Dealer</g:link>
    </div>

    <table>
        <thead>
            <tr>
                <th>Code</th>
                <th>Plaza</th>
                <th>Dealer Name</th>
                <th>Mobile No.</th>
                <th>Showroom Size</th>
                <th>Showroom Address</th>
                <th>Previous Status</th>
                <th>Current Status</th>
                <th>Created Date</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <g:each var="dealer" in="${dealers}">
                <tr>
                    <td>${dealer.code}</td>
                    <td>${dealer.plazaName}</td>
                    <td>${dealer.dealerName}</td>
                    <td>${dealer.phone}</td>
                    <td>${dealer.showroomSize} sq feet</td>
                    <td>${dealer.showroomAddress}</td>
                    <td>${dealer.previousStatus}</td>
                    <td>${dealer.currentStatus}</td>
                    <td><g:formatDate date="${dealer.createdDate}" format="MM/dd/yyyy" /></td>
                    <td class="action-links">
                        <g:link action="edit" id="${dealer.id}" class="edit-link">Edit</g:link>
                        <g:link action="delete" id="${dealer.id}" class="delete-link" onclick="return confirm('Are you sure???')">Delete</g:link>
                        <g:link action="view" id="${dealer.id}" class="view-link">View</g:link>
                    </td>
                </tr>
            </g:each>
        </tbody>
    </table>

</body>
</html>
