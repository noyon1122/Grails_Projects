
<html lang="en">
<head>

    <title>Customer List</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #ecf0f1; margin: 20px; padding-left: 40px; padding-right: 40px;">

    <div style="font-size: 32px; background-color: #32a89e; padding: 10px 15px; font-weight: ba bold; margin: 10px 0; color:white;">Customer List</div>

    <div style="margin-bottom: 10px; display: flex; align-items: center; gap: 10px;">
        <g:form action="search" method="GET" style="display: flex; gap: 10px; align-items: center;">

            <g:textField name="name" placeholder="🔍 Name" style="padding: 12px; border: 2px solid #2ecc71; border-radius: 20px; width: 300px; outline: none; box-shadow: 0 2px 5px rgba(0,0,0,0.2);"/>

             <g:textField name="type" placeholder="🔍 Type" style="padding: 12px; border: 2px solid #2ecc71; border-radius: 20px; width: 300px; outline: none; box-shadow: 0 2px 5px rgba(0,0,0,0.2);"/>

            <g:submitButton name="Search" value="Search" style="padding: 10px 20px; background-color: #2ecc71; color: white; border: none; border-radius: 8px; cursor: pointer; font-weight: bold; transition: background 0.3s;"/>
        </g:form>
    </div>

    <div style="margin-bottom: 10px; display: flex; gap: 15px;">
        <g:link action="index" style="text-decoration: none; color: #2abb80; padding: 10px 15px; border-radius: 8px;">📋 Customer List</g:link>
        <g:link action="create" style="text-decoration: none; color: #2abb80; padding: 10px 15px; border-radius: 8px;">➕ Create new Customer</g:link>
        <g:link action="dealer" style="text-decoration: none; color: #2abb80; padding: 10px 15px; border-radius: 8px;">🔍 Dealer List</g:link>
        <g:link action="createdealer" style="text-decoration: none; color: #2abb80; padding: 10px 15px; border-radius: 8px;">➕ Create new Dealer</g:link>
    </div>

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
                        <g:link action="delete" onclick="return confirm('Are you sure???')" id="${customer.id}" style="color: #e74c3c; text-decoration: none;">🗑️ Delete</g:link>
                        <g:link action="view" id="${customer.id}" style="color: #2ecc71; text-decoration: none;">👁️ View</g:link>
                    </td>
                </tr>
            </g:each>
        </tbody>
    </table>

</body>
</html>
