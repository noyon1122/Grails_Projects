
<html lang="en">
<head>

    <title>Customer List</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #ecf0f1; margin: 20px; padding-left: 40px; padding-right: 40px;">

    <div style="font-size: 32px; background-color: #32a89e; padding: 10px 15px; font-weight: ba bold; margin: 10px 0; color:white;">Customer List</div>

    <table border="1" style="width: 100%; border-collapse: collapse; box-shadow: 0 4px 8px rgba(0,0,0,0.1);">

            <tr style="background-color: #34495e; color: white;">
                <th style="padding: 12px;">A/C No.</th>
                <th>Name</th>
                <th>Type</th>
                <th>Product</th>
                <th>Mobile</th>
                <th>Current Balance</th>
                <th>Is Litigate?</th>
                <th>Is Recovery?</th>
                <th>Action</th>
            </tr>

            <g:each var="customer" in="${customers}">
                <tr style="background-color: #ffffff; transition: background 0.3s;" onmouseover="this.style.backgroundColor='#d1f2eb'" onmouseout="this.style.backgroundColor='#ffffff'">
                    <td style="padding: 12px; border-bottom: 1px solid #ddd;">${customer.accountNo}</td>
                    <td>${customer.customerName}</td>
                    <td>${customer.type}</td>
                    <td>${customer.product}</td>
                    <td>${customer.mobile}</td>
                    <td>${customer.balance}</td>
                    <td>${customer.isLitigate}</td>
                    <td>${customer.isRecovery}</td>
                    <td style="display: flex; gap: 10px;">
                        <g:link action="edit" id="${customer.id}" style="color: #3498db; text-decoration: none;">✏️ Edit</g:link>
                        <g:link action="delete" id="${customer.id}" style="color: #e74c3c; text-decoration: none;">🗑️ Delete</g:link>
                        <g:link action="view" id="${customer.id}" style="color: #2ecc71; text-decoration: none;">👁️ View</g:link>
                    </td>
                </tr>
            </g:each>
        </tbody>
    </table>

</body>
</html>
