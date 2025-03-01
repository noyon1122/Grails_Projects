
<html lang="en">
<head>
    <title>Customer Details</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #ecf0f1; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0;">

    <div style="background:  white; padding: 40px; border-radius: 12px; box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); width: 600px;">

        <div style="font-size: 28px;  font-weight: bold; color: #2c3e50; margin-bottom: 20px; text-align: center;">Customer Details</div>

        <div style="margin-bottom: 10px; display: flex; gap: 2px;">
              <g:link action="index" style="text-decoration: none; color: #2abb80; padding: 10px 15px; border-radius: 8px;">📋 Customer List</g:link>
              <g:link action="dealer" style="text-decoration: none; color: #2abb80; padding: 10px 15px; border-radius: 8px;">📋 Dealer List</g:link>
              <g:link action="recovery" style="text-decoration: none; color: #2abb80; padding: 10px 15px; border-radius: 8px;">📋 Litigate/Recovery Customer List</g:link>
          </div>

          <div style=" text-align: center; color: white; background-color: #3b396e; width: 35%; border-radius: 8px; font-weight: bold;">
          <p style="padding: 5px;">Customer Information</>
          </div>

        <div text-align: center; style="border-top: 2px solid #bdc3c7; padding-top: 10px;">
            <p><strong>Customer Name:</strong> ${customer.customerName}</p>
            <p><strong>Customer Account No:</strong> ${customer.accountNo}</p>
            <p><strong>Customer Type:</strong> ${customer.type}</p>
            <p><strong>Customer Mobile:</strong> ${customer.mobile}</p>
            <p><strong>Litigate Info:</strong> ${customer.isLitigate}</p>
            <p><strong>Recovery Info:</strong> ${customer.isRecovery}</p>
        </div>

        <div style="margin-top: 30px; text-align: left;">
            <g:link action="edit" id="${customer.id}" style="text-decoration: none; color: white; background-color: #2ecc71; padding: 12px 40px; border-radius: 8px; font-weight: bold;">Edit</g:link>
        </div>

    </div>

</body>
</html>
