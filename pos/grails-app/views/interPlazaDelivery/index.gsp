<html>
<head>
    <title>Inter Plaza Delivery List</title>
    <g:render template="/layouts/heading" />
</head>
<body>

    <!-- Page Title -->
    <div class="page-title">Transfer Do List</div>

    <!-- Navigation Links -->
    <div class="nav-links">
        <g:link action="index">🏠 Home</g:link>
        <g:link action="create">➕ New InterPlaza Delivery</g:link>
    </div>

    <!-- Search Form -->
    <div class="search-container">
        <g:form action="search" method="POST" style="display: flex; flex-direction: column; gap: 15px;">

            <div style="display: flex; gap: 30px;">
                <div>
                    <label>Delivery From</label>
                </div>
                <div>
                    <label>Delivery To</label>
                </div>
            </div>

            <div style="display: flex; gap: 30px;">
                <div>
                    <label>From Date</label>
                    <input type="date" name="fromDate" class="search-input" />
                </div>
                <div>
                    <label>To Date</label>
                    <input type="date" name="toDate" class="search-input" />
                </div>
            </div>

            <div>
                <label>Code</label>
                <g:textField name="code" class="search-input" />
            </div>

            <g:submitButton name="Search" value="Search" class="search-button" />
        </g:form>
    </div>

    <!-- Delivery Table -->
    <table class="customer-table">
        <thead>
            <tr>
                <th>Code</th>
                <th>Delivery From Plaza</th>
                <th>Delivery To Plaza</th>
                <th>Disbursed Qty</th>
                <th>Received Qty</th>
                <th>Created Date</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <g:each var="interPlaza" in="${interPlazaDeliveryLists}">
                <tr>
                    <td>${interPlaza.code}</td>
                    <td>${interPlaza.deliveryFrom}</td>
                    <td>${interPlaza.deliveryTo}</td>
                    <td>${interPlaza.disbursedQty}</td>
                    <td>${interPlaza.receivedQty}</td>
                    <td><g:formatDate date="${interPlaza.createdDate}" format="dd/MM/yyyy" /></td>
                    <td class="action-links">
                        <g:link action="view" id="${interPlaza.id}" class="view-link">View</g:link>
                    </td>
                </tr>
            </g:each>
        </tbody>
    </table>

</body>
</html>
