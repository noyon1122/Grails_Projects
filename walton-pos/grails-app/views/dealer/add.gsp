<html lang="en">

<head>
    <title>New Dealer Create</title>
    <g:render template="/layouts/heading" />

     <style>

          .div-body {
                margin: 0 80px;
                font-size: 14px;
                font-family: Arial, sans-serif;
            }

            /* Header styling */
            .div-header {
                font-size: 20px;
                font-weight: semi-bold;

                padding:10px 5px;
                border: 1px solid #ddd;
                background-color:#eef6f6;
            }

       .application-div  {
         display: flex;
         flex-direction: row;
         margin:10px 0px;
         gap:10px;

          }

     .form-div{
      background-color: #e6fff7;
      padding:20px 20px;
      border: 1px solid #ddd;

     }

     .form-container{
      display: grid;
      row-gap: 10px;
     }


     .first-row{
        display: flex;
        flex-direction: row;
        gap: 5px;

     }

      .second-row{
        display: flex;
        flex-direction: row;
        gap: 5px;
      }
      .third-row{
         display: flex;
         flex-direction: row;
         gap: 5px;
      }

      .four-row{
           display: flex;
           flex-direction: row;
           gap: 5px;
      }
      .five-row{
             display: flex;
             flex-direction: row;
             gap: 5px;

      }
      .six-row{
         display: flex;
      }

.form-item {
    display: flex;
    flex-direction: column;
    gap: 5px;
}
    hr {
        border: 1px solid #ddd;
        width: 100%;
        margin: 10px 0;
    }
     </style>
</head>

<body>
  <div class="div-body">
    <div class="div-header">New Dealer Application</div>

     <div class="application-div">
     <g:link action="" >Home</g:link>
     <g:link action="" > Processing List </g:link>
     <g:link action="add" > New Dealer Application </g:link>
     <g:link action="add" > New Corporate Application </g:link>
     </div>

    <div style="background-color:#074352;width:18%">
    <h3 style="padding:5px; text-align:center; color:#f2f2f2;">Dealer Information </h3>
    </div>
      <div class="container">
         <g:form action="add" method="POST" class="form-div">
         <div class="form-container">



<div class="first-row">

       <div class="form-item">
              <label for="offer">Plaza Name</label>
              <g:select
              name="plazaName"
              id="plazaName"
              class="form-input"
              from=""
              optionKey="id"
              optionValue="name"
              noSelection="['':'']" />
           </div>
        <div class="form-item">
           <label>Dealer Name</label>
           <g:textField name="dealerName" class="form-input" />
       </div>

       <div class="form-item">
           <label>Showroom Size</label>
           <g:field name="showroomSize" type="number" class="form-input" />
       </div>

       <div class="form-item">
           <label>Id No</label>
           <g:field name="idNo" type="number" class="form-input" />
       </div>
</div>

            <div class="form-item">
                <label>Showroom Address</label>
                <g:textField name="showroomAddress" class="form-input" />
            </div>
<div class="second-row">
            <div class="form-item">
               <label for="offer">Division</label>
               <g:select
               name="division"
               id="division"
               class="form-input"
               from=""
               optionKey="id"
               optionValue="name"
               noSelection="['':'']" />
           </div>
           <div class="form-item">
               <label for="offer">District</label>
               <g:select
               name="district"
               id="district"
               class="form-input"
               from=""
               optionKey="id"
               optionValue="name"
               noSelection="['':'']" />
            </div>

           <div class="form-item">
               <label for="offer">Upazila/Thana</label>
               <g:select
               name="postOffice"
               id="postOffice"
               class="form-input"
               from=""
               optionKey="id"
               optionValue="name"
               noSelection="['':'']" />
            </div>

            <div class="form-item">
                <label>Union/Poroshoba/City</label>
                <g:textField name="poroshoba" class="form-input" />
            </div>
            <div class="form-item">
                <label>Vill/Town/Moholla</label>
                <g:textField name="village" class="form-input" />
            </div>

</div>
 <hr>


            <div class="form-item">
                <label>Proprietor Name</label>
                <g:textField name="proprietorName" class="form-input" />
            </div>


            <div class="form-item">
               <label>Proprietor Present Address</label>
               <g:textField name="propPresentAddress" class="form-input" />
           </div>

            <div class="form-item">
               <label>Proprietor Permanent Address</label>
               <g:textField name="propPermanentAddress" class="form-input" />
           </div>

 <div class="third-row">

         <div class="form-item">
            <label>Proprietor Mobile Phone1</label>
            <g:field name="propMobile1" class="form-input" />
            </div>

            <div class="form-item">
            <label>Proprietor Mobile Phone2</label>
            <g:field name="propMobile2" class="form-input" />
            </div>

           <div class="form-item">
           <label>Proprietor National Id</label>
           <g:field name="propNid" class="form-input" />
           </div>
 </div>

 <div class="four-row">
    <div class="form-item">
           <label>Proprietor Bank Account Name</label>
           <g:field name="propBankAccountName" class="form-input" />
           </div>

           <div class="form-item">
           <label>Proprietor Bank Account No</label>
           <g:field name="propBankAccount" class="form-input" />
           </div>

           <div class="form-item">
           <label>Proprietor Bank Name</label>
           <g:field name="propBankName" class="form-input" />
           </div>

           <div class="form-item">
           <label>Proprietor Bank Brunch Name</label>
           <g:field name="propBankBranch" class="form-input" />
           </div>

 </div>
          <hr>

 <div class="five-row">
  <div class="form-item">
          <label>Proprietor Guardian Name</label>
          <g:field name="propGuardian" class="form-input" />
          </div>

          <div class="form-item">
          <label>Proprietor Guardian Mobile no</label>
          <g:field name="propGuardianMobile" class="form-input" />
          </div>
 </div>

  <div class="six-row">
   <div class="form-item">
              <label>Is Exclusive?</label>
              <label>
                  <g:radio name="isExclusive" value="Yes" checked="${isExclusive == 'Yes'}"/> Yes
              </label>
              <label>
                  <g:radio name="isExclusive" value="No" checked="${isExclusive == 'No'}"/> No
              </label>
          </div>

          <div class="form-item">
           <label>Dealer Point Name</label>
           <g:field name="dealerPointName" class="form-input" />
          </div>

  </div>
         <div class="form-item">
            <label>Is MICR?</label>
            <label>
                <g:radio name="isMicr" value="Yes" checked="${isMicr == 'Yes'}"/> Yes
            </label>
            <label>
                <g:radio name="isMicr" value="No" checked="${isMicr == 'No'}"/> No
            </label>
        </div>

        <div class="form-item">
         <label>Remarks</label>
         <g:field name="remarks" class="form-input" />
        </div>

        <div style="background-color:#074352;width:8%">
          <h3 style="font-size: 12px; text-align:center; color:#f2f2f2;">Dealer for </h3>
          </div>

        <div>
        <table border="1">
                <thead>
                    <tr>
                        <th>Action</th>
                        <th>Product</th>
                        <th>Prefix Code</th>
                    </tr>
                </thead>
                <tbody>

                  <tr>
                      <td><g:checkBox name="product" value="Refrigerator" checked="${'Refrigerator' in params.product}" /></td>
                      <td>Refrigerator</td>
                      <td>D-</td>
                      <g:hiddenField name="prefixCode" value="D-" />
                  </tr>
                  <tr>
                      <td><g:checkBox name="product" value="TV" checked="${'TV' in params.product}" /></td>
                      <td>TV</td>
                      <td>DTV-</td>
                      <g:hiddenField name="prefixCode" value="DTV-" />
                  </tr>
                  <tr>
                      <td><g:checkBox name="product" value="AC" checked="${'AC' in params.product}" /></td>
                      <td>AC</td>
                      <td>DAC-</td>
                      <g:hiddenField name="prefixCode" value="DAC-"  />
                  </tr>
                  <tr >
                     <td><g:checkBox name="product" value="CellCom" checked="${'CellCom' in params.product}" /></td>
                      <td>CellCom</td>
                      <td>MD-</td>
                      <g:hiddenField name="prefixCode" value="MD-"  />
                  </tr>
                   <tr>
                      <td><g:checkBox name="product" value="Laptop" checked="${'Laptop' in params.product}" /></td>
                      <td>Laptop</td>
                      <td>DLAP-</td>
                      <g:hiddenField name="prefixCode" value="DLAP-"  />
                    </tr>

                </tbody>
            </table>

        </div>
        <div style="">
         <g:submitButton name="Cancel" style="padding:5px 25px;"/>
          <g:submitButton name="Save" style="padding:5px 25px;"/>

       </div>

          </g:form>
      </div>
  </div>

</body>

</html>