
<html lang="en">
<head>

    <title>Dealer List</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #ecf0f1; margin: 20px; padding-left: 40px; padding-right: 40px;">

    <div style="font-size: 32px; background-color: #32a89e; padding: 10px 15px; font-weight: ba bold; margin: 10px 0; color:white;">Dealer List</div>
      <div style="margin-bottom: 10px; display: flex; gap: 15px;">
             <g:link action="index" style="text-decoration: none; color: #2abb80; padding: 10px 15px; border-radius: 8px;">📋Home</g:link>
             <g:link action="process" style="text-decoration: none; color: #2abb80; padding: 10px 15px; border-radius: 8px;">Processing List</g:link>
             <g:link action="create" style="text-decoration: none; color: #2abb80; padding: 10px 15px; border-radius: 8px;">➕ Create new Dealer</g:link>

         </div>
    <div style="margin-bottom: 10px; display: flex; align-items: center; gap: 10px;">
        <g:form action="search" method="GET" style="display: flex; gap: 10px; align-items: center;">
            <g:textField name="phone" placeholder="🔍 Phone" style="padding: 12px; border: 2px solid #2ecc71; border-radius: 20px; width: 300px; outline: none; box-shadow: 0 2px 5px rgba(0,0,0,0.2);"/>

            <g:textField name="code" placeholder="🔍 Code" style="padding: 12px; border: 2px solid #2ecc71; border-radius: 20px; width: 300px; outline: none; box-shadow: 0 2px 5px rgba(0,0,0,0.2);"/>

            <g:submitButton name="Search" value="Search" style="padding: 10px 20px; background-color: #2ecc71; color: white; border: none; border-radius: 8px; cursor: pointer; font-weight: bold; transition: background 0.3s;"/>
        </g:form>
    </div>

<table style="width: 100%; border-collapse: collapse; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">

    <thead>
        <tr style="background-color: #2db7f7; color: white; font-size: 16px;">
            <th style="padding: 15px; text-align: left;">Code</th>
            <th style="padding: 15px; text-align: left;">Plaza</th>
            <th style="padding: 15px; text-align: left;">Dealer Name</th>
            <th style="padding: 15px; text-align: left;">Mobile No.</th>
            <th style="padding: 15px; text-align: left;">Showroom Size</th>
            <th style="padding: 15px; text-align: left;">Showroom Address</th>
            <th style="padding: 15px; text-align: left;">Previous Status</th>
            <th style="padding: 15px; text-align: left;">Current Status</th>
            <th style="padding: 15px; text-align: left;">Created Date</th>
            <th style="padding: 15px; text-align: left;">Action</th>
        </tr>
    </thead>

    <tbody>
        <g:each var="dealer" in="${dealers}">
            <tr style="background-color: #ffffff; border-bottom: 1px solid #ecf0f1; transition: background-color 0.3s; font-size: 14px;" onmouseover="this.style.backgroundColor='#f0f8ff'" onmouseout="this.style.backgroundColor='#ffffff'">
                <td style="padding: 12px;">${dealer.code}</td>
                <td style="padding: 12px;">${dealer.plazaName}</td>
                <td style="padding: 12px;">${dealer.dealerName}</td>
                <td style="padding: 12px;">${dealer.phone}</td>
                <td style="padding: 12px;">${dealer.showroomSize} sq feet</td>
                <td style="padding: 12px;">${dealer.showroomAddress}</td>
                <td style="padding: 12px;">${dealer.previousStatus}</td>
                <td style="padding: 12px;">${dealer.currentStatus}</td>
                <td style="padding: 12px;"><g:formatDate date="${dealer.createdDate}" format="MM/dd/yyyy" /></td>
                <td style="padding: 12px; display: flex; gap: 10px; justify-content: center;">
                    <g:link action="edit" id="${dealer.id}" style="background-color: #3498db; color: white; padding: 8px 12px; border-radius: 6px; text-decoration: none; transition: background-color 0.3s; display: flex; align-items: center; gap: 5px;">
                        <i class="fa fa-pencil-alt"></i> Edit
                    </g:link>
                    <g:link action="delete" onclick="return confirm('Are you sure???')" id="${dealer.id}" style="background-color: #e74c3c; color: white; padding: 8px 12px; border-radius: 6px; text-decoration: none; transition: background-color 0.3s; display: flex; align-items: center; gap: 5px;">
                        <i class="fa fa-trash"></i> Delete
                    </g:link>
                    <g:link action="view" id="${dealer.id}" style="background-color: #2ecc71; color: white; padding: 8px 12px; border-radius: 6px; text-decoration: none; transition: background-color 0.3s; display: flex; align-items: center; gap: 5px;">
                        <i class="fa fa-eye"></i> View
                    </g:link>
                </td>
            </tr>
        </g:each>
    </tbody>
</table>

<!-- FontAwesome CDN for icons -->
<script src="https://kit.fontawesome.com/a076d05399.js"></script>

</body>
</html>
