<html>
<head></head>
<body>
<div>
 <div>
 <g:link action="index">Sales Certificate List</g:link>
 <g:link action="create">New Sales Certificate</g:link>
 </div>

   <div text-align: center; style="border-top: 2px solid #bdc3c7; padding-top: 10px;">
            <p>Sale Invoice No ${sale.invoiceNo}</p>
            <p>Plaza ${sale.plazaName}</p>
            <p>Customer ${sale.customer}</p>
            <p>Brand  ${sale.brand}</p>
            <p>Mode ${sale.model}</p>
            <p>Class Of Vehicle ${sale.classOfVehicle}</p>
            <p>Chassis No ${sale.chassisNo}</p>
            <p>Motor No ${sale.motorNo}</p>
            <p>Battery Type ${sale.batteryType}</p>
            <p>Battery Num ${sale.batteryNum}</p>
            <p>Motor Power ${sale.motorPower}</p>
            <p>Color ${sale.color}</p>
            <p>Weight ${sale.weight}</p>
            <p>Manufac Year ${sale.manufacYear}</p>
            <p>Wheel Base ${sale.wheelBase}</p>
            <p>Tyre Size ${sale.tyreSize}</p>
            <p>Num Motor ${sale.numberOfMotor}</p>
            <p>Is Active ${sale.isActive}</p>
            <p>Created ${sale.createdDate}</p>
        </div>
</div>


</body>
</html>