<html lang="en">

<head>
    <title>show SaleMst</title>
    <g:render template="/layouts/heading" />

     <style>

          .sale-body {
                margin: 0 80px;
                font-size: 14px;
                font-family: Arial, sans-serif;
            }

            /* Header styling */
            .sale-header {
                font-size: 24px;
                font-weight: bold;
                margin-bottom: 10px;
                padding:10px 5px;
                border: 1px solid #ddd;
                background-color:#eef6f6;
            }

      .form-container {
                display: flex;
                flex-wrap: wrap; /* Allow elements to wrap onto a new line */
                gap: 10px; /* Equal gap between form items */
                background-color: #e6fff7;
                padding:20px 10px 0px 10px;
                border: 1px solid #ddd;
            }
  .form-item {
             display: flex;
             align-items: center;
             gap: 10px;
             width: 45%;
         }

         /* General input styling */
         .sale-input {
             padding: 6px;
             font-size: 12px;
             width: 80%;
             height: 26px;
             box-sizing: border-box;
         }


         .form-item label {
             white-space: nowrap; /* Prevent labels from wrapping */
             font-weight: bold; /* Optional: Make labels bold */
             width: 185px; /* Set a fixed width for labels */
         }

           .link-div {
                 display: flex; /* Keep items in a row */
                 gap: 20px; /* Add space between links */
             }
             .link-item {
                 text-decoration: none; /* Optional: Remove underline */
                 color: #000; /* Optional: Set link color */
             }
     </style>
</head>

<body>
  <div class="sale-body">
    <div class="sale-header"> Sale Details</div>

    <div class="link-div">
        <g:link action="list" class="link-item">Sales List</g:link>
        <g:link action="retailSale" class="link-item">New Retail Sale</g:link>
        <g:link action="" class="link-item">New Sale with Card</g:link>
        <g:link action="" class="link-item">New Dealer Sale</g:link>
        <g:link action="" class="link-item">New Hire Sale</g:link>
    </div>

    <div style="background-color:#074352;width:18%">
    <h3 style="padding:5px; text-align:center; color:#f2f2f2;">Customer Information </h3>
    </div>
      <div class="container">
         <div class="form-container">
         <div class="form-item">
                <label>Plaza Name</label>
                <h3>Walton Plaza Chandra</label>
          </div>

            <div class="form-item">
            </div>
            <!-- First label-input pair -->
             <div class="form-item">
                <label>Customer Id</label>
                <g:textField name="customerId" value="${sale.customer.custId}" class="sale-input" style="width:46%;" />
                <g:textField name="retail" value="Retail" class="sale-input" style="width:30%;" />
            </div>

            <div class="form-item">
                <label>Customer Code/AC</label>
                <g:textField name="employeeId" value="${sale.customer.accountNo}" class="sale-input" />
            </div>
            <div class="form-item">
                <label>Customer Name</label>
                <g:textField name="customerName" value="${sale.customer.customerName}"  class="sale-input" />
            </div>

            <div class="form-item">
                <label>Invoice No</label>
                <g:textField name="saleNo" value="${sale.saleNo}" class="sale-input" />
            </div>

            <!-- Second label-input pair -->
            <div class="form-item">
                <label>Customer Photo</label>
               <p>Image</p>
            </div>

            <div class="form-item">
                <label>Invoice Time</label>
                <g:textField name="saleDate" value="${sale.saleDate}"  class="sale-input" />
            </div>

            <!-- Third label-input pair -->
            <div class="form-item">
                <label>Employee Id</label>
                <g:textField name="employeeId"  class="sale-input" />
            </div>
            <div class="form-item">
                 <label>National Id</label>
                <g:textField name="customerNid" value="${sale.customer.customerNid}"  class="sale-input" />
            </div>

             <div class="form-item">
            <label>Present Address</label>
            <g:textField name="customerAddress" value="${sale.customer.customerAddress}"  class="sale-input" />
            </div>
            <div class="form-item">
             <label>Mobile No</label>
            <g:textField name="mobile" value="${sale.customer.mobile}"  class="sale-input" />
            </div>

            <!-- Fourth label-input pair -->
            <div class="form-item">
                <label>Investigation Id</label>
                <g:textField name="investigationId" class="sale-input" />
            </div>

            <div class="form-item">
                <label>Investigation Note</label>
                <g:textField name="investigationNote" class="sale-input" />
            </div>
         <table class="sale-table" style="width:100%">
          <thead>
              <tr>
                  <th>SI.</th>
                  <th>Product Name</th>
                  <th>Product SL No</th>
                  <th>Quantity</th>
                  <th>Rate</th>
                  <th>Ammount </th>
                  <th>Discount</th>
                  <th>Offer Discount</th>
                  <th>Total Price</th>
              </tr>
          </thead>
                    </table>
                </div>

                </div>
        <div style="background-color:#074352;width:18%">
           <h3 style="padding:5px; text-align:center; color:#f2f2f2;">Sale Information</h3>
           </div>
    <div class="form-container">
           <!-- First label-input pair -->
           <div class="form-item">
               <label>Total</label>
               <g:textField name="grandTotal" value="${sale.grandTotal}" class="sale-input" />
           </div>

           <div class="form-item">
               <label>Price Type</label>
               <g:textField name="priceType" value="${sale.priceType}" class="sale-input" />
           </div>

           <!-- Second label-input pair -->
           <div class="form-item">
               <label>Gain On MRP</label>
               <g:textField name="gainMrp" value="0" class="sale-input" />
           </div>

           <div class="form-item">
               <label>Sales Type</label>
               <g:textField name="saleType" value="${sale.saleType}"  class="sale-input" />
           </div>

           <!-- Third label-input pair -->
           <div class="form-item">
               <label>Rebate</label>
               <g:textField name="rebate" value="${sale.grandTotal-sale.cash}"  class="sale-input" />
           </div>
           <div class="form-item">
               <label>Cash Received</label>
               <g:textField name="cash" value="${sale.cash}"  class="sale-input" />
           </div>

           <!-- Fourth label-input pair -->
           <div class="form-item">
               <label>Other[+,-]</label>
               <g:textField name="other" class="sale-input" />
           </div>

           <div class="form-item">
               <label>Current Balance</label>
               <g:textField name="balance" class="sale-input" />
           </div>

           <div class="form-item">
               <label>Grand Total</label>
               <g:textField name="grandTotal" value="${sale.grandTotal}" class="sale-input" />
           </div>

           <div class="form-item">
               <label>Processing Fee</label>

           </div>

           <div class="form-item">
               <label>Collected Amount</label>
               <g:textField name="amount" class="sale-input" />
           </div>

           <div class="form-item">
               <label>Next Installment Date</label>
               <g:textField name="installment" class="sale-input" />
           </div>

           <div class="form-item">
               <label>Total Collection</label>
               <g:textField name="cash" value="${sale.cash}"  class="sale-input" />
           </div>

           <div class="form-item">
               <label>Remarks</label>

           </div>

               </div>
               </div>


      </div>
  </div>

</body>

</html>