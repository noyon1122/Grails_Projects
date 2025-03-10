<html lang="en">
<head>
    <title>Dealer List</title>
    <g:render template="/layouts/heading" />
    <link rel="stylesheet" href="/css/style.css" />
</head>
<body class="dealer-body">

    <div class="dealer-header">Dealer List</div>

    <div class="dealer-links">
        <g:link action="index" class="dealer-link">📋Home</g:link>
        <g:link action="process" class="dealer-link">Processing List</g:link>
        <g:link action="create" class="dealer-link">➕ Create new Dealer</g:link>
    </div>

    <div class="dealer-search">
        <g:form action="search" method="GET" class="dealer-form">
            <g:textField name="phone" placeholder="🔍 Phone" class="dealer-input" />
            <g:textField name="code" placeholder="🔍 Code" class="dealer-input" />
            <g:submitButton name="Search" value="Search" class="dealer-submit" />
        </g:form>
    </div>

    <table class="dealer-table">

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
                <tr class="dealer-row" onmouseover="this.classList.add('hover')" onmouseout="this.classList.remove('hover')">
                    <td>${dealer.code}</td>
                    <td>${dealer.plazaName}</td>
                    <td>${dealer.dealerName}</td>
                    <td>${dealer.phone}</td>
                    <td>${dealer.showroomSize} sq feet</td>
                    <td>${dealer.showroomAddress}</td>
                    <td>${dealer.previousStatus}</td>
                    <td>${dealer.currentStatus}</td>
                    <td><g:formatDate date="${dealer.createdDate}" format="MM/dd/yyyy" /></td>
                    <td class="dealer-actions">
                        <g:link action="edit" id="${dealer.id}" class="dealer-action edit"> Edit</g:link>
                        <g:link action="delete" onclick="return confirm('Are you sure???')" id="${dealer.id}" class="dealer-action delete"> Delete</g:link>
                        <g:link action="view" id="${dealer.id}" class="dealer-action view"> View</g:link>
                    </td>
                </tr>
            </g:each>
        </tbody>
    </table>

</body>
</html>
