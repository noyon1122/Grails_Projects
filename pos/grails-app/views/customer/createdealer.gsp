<!DOCTYPE html>
<html lang="en">
<head>
    <title>Add New Dealer</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #ecf0f1; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0;">

    <div style="background: white; padding: 40px; border-radius: 12px; box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); width: 800px;">
        <div style="font-size: 28px; font-weight: bold; color: #2c3e50; margin-bottom: 20px; text-align: center;">Add New Dealer</div>

        <g:form action="dealersave" method="POST" style="display: flex; flex-direction: column; gap: 20px;">

            <div style="display: flex; gap: 40px;">
                <div style="flex: 1;">
                    <label style="font-weight: bold; color: #34495e;">A/C No.</label>
                    <g:textField name="accountNo" style="padding: 10px; border: 1px solid #bdc3c7; border-radius: 8px; width: 100%;" />
                </div>
                <div style="flex: 1;">
                    <label style="font-weight: bold; color: #34495e;">Name</label>
                    <g:textField name="customerName" style="padding: 10px; border: 1px solid #bdc3c7; border-radius: 8px; width: 100%;" />
                </div>
            </div>

            <div style="display: flex; gap: 40px;">
                <div style="flex: 1;">
                    <label style="font-weight: bold; color: #34495e;">Type</label>
                    <g:textField name="type" value="Hire" style="padding: 10px; border: 1px solid #bdc3c7; border-radius: 8px; width: 100%;" />
                </div>
                <div style="flex: 1;">
                    <label style="font-weight: bold; color: #34495e;">Product</label>
                    <g:textField name="product" style="padding: 10px; border: 1px solid #bdc3c7; border-radius: 8px; width: 100%;" />
                </div>
            </div>

            <div style="display: flex; gap: 40px;">
                <div style="flex: 1;">
                    <label style="font-weight: bold; color: #34495e;">Mobile</label>
                    <g:textField name="mobile" style="padding: 10px; border: 1px solid #bdc3c7; border-radius: 8px; width: 100%;" />
                </div>
                <div style="flex: 1;">
                    <label style="font-weight: bold; color: #34495e;">Current Balance</label>
                    <g:field name="balance" type="number" style="padding: 10px; border: 1px solid #bdc3c7; border-radius: 8px; width: 100%;" />
                </div>
            </div>

            <div style="display: flex; gap: 40px;">
                <div style="flex: 1;">
                    <label style="font-weight: bold; color: #34495e;">Is Litigate</label>
                    <g:textField name="isLitigate" style="padding: 10px; border: 1px solid #bdc3c7; border-radius: 8px; width: 100%;" />
                </div>
                <div style="flex: 1;">
                    <label style="font-weight: bold; color: #34495e;">Is Recovery</label>
                    <g:textField name="isRecovery" style="padding: 10px; border: 1px solid #bdc3c7; border-radius: 8px; width: 100%;" />
                </div>
            </div>

            <g:submitButton name="Add New Dealer" style="margin-top: 20px; padding: 12px; background-color: #2ecc71; color: white; border: none; border-radius: 8px; font-weight: bold; cursor: pointer; transition: background 0.3s;" onmouseover="this.style.backgroundColor='#27ae60'" onmouseout="this.style.backgroundColor='#2ecc71'" />

        </g:form>
    </div>

</body>
</html>
