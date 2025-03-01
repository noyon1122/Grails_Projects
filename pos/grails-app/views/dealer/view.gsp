
<html lang="en">
<head>
    <title>Dealer Details</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #ecf0f1; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0;">

    <div style="background:  white; padding: 40px; border-radius: 12px; box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); width: 600px;">

        <div style="font-size: 28px;  font-weight: bold; color: #2c3e50; margin-bottom: 20px; text-align: center;">Dealer Details</div>

          <div style=" text-align: center; color: white; background-color: #3b396e; width: 35%; border-radius: 8px; font-weight: bold;">
          <p style="padding: 5px;">Dealer Information</>
          </div>

        <div text-align: center; style="border-top: 2px solid #bdc3c7; padding-top: 10px;">
            <p><strong>Customer Name:</strong> ${dealer.code}</p>
            <p><strong>Customer Account No:</strong> ${dealer.plazaName}</p>
            <p><strong>Customer Type:</strong> ${dealer.dealerName}</p>
            <p><strong>Customer Mobile:</strong> ${dealer.phone}</p>
            <p><strong>Litigate Info:</strong> ${dealer.showroomSize}</p>
            <p><strong>Recovery Info:</strong> ${dealer.showroomAddress}</p>
            <p><strong>Customer Mobile:</strong> ${dealer.previousStatus}</p>
            <p><strong>Litigate Info:</strong> ${dealer.currentStatus}</p>
            <p><strong>Recovery Info:</strong> ${dealer.createdDate}</p>
        </div>

        <div style="margin-top: 30px; text-align: left;">
            <g:link action="edit" id="${dealer.id}" style="text-decoration: none; color: white; background-color: #2ecc71; padding: 12px 40px; border-radius: 8px; font-weight: bold;">Edit</g:link>
        </div>

    </div>

</body>
</html>
