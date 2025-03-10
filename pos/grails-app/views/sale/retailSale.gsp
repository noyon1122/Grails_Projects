<html lang="en">

<head>
    <title>Retail Sale</title>
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
                padding:20px 20px;
                border: 1px solid #ddd;
            }
      .form-control2{
         background-color: #e6fff7;
         padding:20px 20px;
         border: 1px solid #ddd;

      }


  .form-item {
             display: flex;
             align-items: center;
             gap: 10px;
             width: 45%;
         }

         /* Last form item will take full width */


         /* General input styling */
         .sale-input {
             padding: 8px;
             font-size: 14px;
             width: 100%; /* Ensure inputs take full width */
             height: 36px; /* Make inputs consistent in height */
             box-sizing: border-box; /* Include padding and border in width/height calculations */
         }

         /* Ensure labels are not broken into two lines */
         .form-item label {
             white-space: nowrap; /* Prevent labels from wrapping */
             font-weight: bold; /* Optional: Make labels bold */
             width: 185px; /* Set a fixed width for labels */
         }
     </style>
</head>

<body>
  <div class="sale-body">
    <div class="sale-header">Retail Sale</div>

    <div style="background-color:#074352;width:18%">
    <h3 style="padding:5px; text-align:center; color:#f2f2f2;">Customer Information </h3>
    </div>
      <div class="container">
         <g:form action="add" method="GET" class="sale-form">
         <div class="form-container">
            <!-- First label-input pair -->
            <div class="form-item">
                <label>Mobile No</label>
                <g:textField name="mobile" class="sale-input" />
            </div>

            <div class="form-item">
                <label>Employee Id</label>
                <g:textField name="employeeId" class="sale-input" />
            </div>

            <!-- Second label-input pair -->
            <div class="form-item">
                <label>Customer Name</label>
                <g:textField name="customerName" class="sale-input" />
            </div>

            <div class="form-item">
                <label>Customer Address</label>
                <g:textField name="customerAddress" class="sale-input" />
            </div>

            <!-- Third label-input pair -->
            <div class="form-item">
                <label>Customer Nation Id</label>
                <g:textField name="customerNid" class="sale-input" />
            </div>
            <div class="form-item">

            </div>

            <!-- Fourth label-input pair -->
            <div class="form-item">
                <label>Sales By</label>
                <g:textField name="saleBy" class="sale-input" />
            </div>

            <div class="form-item">
                <label>Purchaser Bin</label>
                <g:textField name="bin" class="sale-input" />
            </div>


            <div class="form-item">
                <label for="offer">Select Offer:</label>
                <g:select
                name="offer"
                id="offer"
                class="sale-input"
                from=""
                optionKey="id"
                optionValue="name"
                noSelection="['':'-- Select Offer --']" />
            </div>
                </div>
                </div>
        <div style="background-color:#074352;width:18%">
           <h3 style="padding:5px; text-align:center; color:#f2f2f2;">Cash Calculation </h3>
           </div>
       <div class="form-control2">
           <div class="form-item" style="margin:10px 0px;">
           <label>Total : </label>
           <g:field name="total" class="sale-input" />
           </div>
            <div class="form-item" style="margin:10px 0px;">
          <label>Trade Discount :</label>
          <g:field name="discount" class="sale-input" />
          </div>
           <div class="form-item" style="margin:10px 0px;">
         <label>Grand Total :</label>
         <g:field name="grandTotal" class="sale-input" />
         </div>
         <div class="form-item" style="margin:10px 0px;">
        <label>Cash Received :</label>
        <g:field name="cash" class="sale-input" style="width:100%"/>
        </div>
        <div style="">
         <g:submitButton name="Cancel" style="padding:5px 25px;"/>
          <g:submitButton name="Save" style="padding:5px 25px;"/>
        </div>
       </div>

          </g:form>
      </div>
  </div>

</body>

</html>