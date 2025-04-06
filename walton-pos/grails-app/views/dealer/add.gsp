<html lang="en">

<head>
    <title>New Dealer Create</title>
    <g:render template="/layouts/heading" />
     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

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
         <g:form action="save" method="POST" class="form-div">
         <div class="form-container">



<div class="first-row">

       <div class="form-item">
           <label for="offer">Plaza Name</label>
           <select id="plazaId" name="plaza">
             <option value="">-- Select Plaza --</option>
             <g:each var="plaza" in="${plazas}">
                 <option value="${plaza.id}">${plaza.name}</option>
             </g:each>
         </select>
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
           <g:field name="dealerNumber" type="number" class="form-input" />
       </div>
</div>

            <div class="form-item">
                <label>Showroom Address</label>
                <g:textField name="showroomAddress" class="form-input" />
            </div>
<div class="second-row">
            <div class="form-item">
            <label for="divisionSelect">Select Division:</label>
            <select id="divisionSelect" name="division">
                   <option value="">-- Select Division --</option>
                   <g:each var="division" in="${divisions}">
                       <option value="${division.id}">${division.name}</option>
                   </g:each>
               </select>
           </div>
         <div class="form-item">
        <label for="districtSelect">Select District:</label>
            <select id="districtSelect" name="district">
                <option value="">-- Select District --</option>
            </select>
         </div>

           <div class="form-item" >
              <label for="postOfficeSelect">Select PostOffice:</label>
                 <select id="postOfficeSelect" name="postOffice">
                     <option value="">-- Select PostOffice --</option>
                 </select>
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
            <g:textField name="propMobile1" class="form-input" />
            </div>

            <div class="form-item">
            <label>Proprietor Mobile Phone2</label>
            <g:textField name="propMobile2" class="form-input" />
            </div>

           <div class="form-item">
           <label>Proprietor National Id</label>
           <g:textField name="propNid" class="form-input" />
           </div>
 </div>

 <div class="four-row">
    <div class="form-item">
           <label>Proprietor Bank Account Name</label>
           <g:textField name="propBankAccountName" class="form-input" />
           </div>

           <div class="form-item">
           <label>Proprietor Bank Account No</label>
           <g:textField name="propBankAccount" class="form-input" />
           </div>

           <div class="form-item">
           <label>Proprietor Bank Name</label>
           <g:textField name="propBankName" class="form-input" />
           </div>

           <div class="form-item">
           <label>Proprietor Bank Brunch Name</label>
           <g:textField name="propBankBranch" class="form-input" />
           </div>

 </div>
          <hr>

 <div class="five-row">
  <div class="form-item">
          <label>Proprietor Guardian Name</label>
          <g:textField name="propGuardian" class="form-input" />
          </div>

          <div class="form-item">
          <label>Proprietor Guardian Mobile no</label>
          <g:textField name="propGuardianMobile" class="form-input" />
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
           <g:textField name="dealerPointName" class="form-input" />
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
         <g:textField name="remarks" class="form-input" />
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
                  <td><g:checkBox name="product" value="Refrigerator" checked="${dealer?.products?.containsKey('Refrigerator')}" /></td>
                  <td>Refrigerator</td>
                  <td>D-</td>
                  <g:hiddenField name="prefixCode" value="D-" />
              </tr>
              <tr>
                  <td><g:checkBox name="product" value="TV" checked="${dealer?.products?.containsKey('TV')}" /></td>
                  <td>TV</td>
                  <td>DTV-</td>
                  <g:hiddenField name="prefixCode" value="DTV-" />
              </tr>
              <tr>
                  <td><g:checkBox name="product" value="AC" checked="${dealer?.products?.containsKey('AC')}" /></td>
                  <td>AC</td>
                  <td>DAC-</td>
                  <g:hiddenField name="prefixCode" value="DAC-" />
              </tr>
              <tr>
                  <td><g:checkBox name="product" value="CellCom" checked="${dealer?.products?.containsKey('CellCom')}" /></td>
                  <td>CellCom</td>
                  <td>MD-</td>
                  <g:hiddenField name="prefixCode" value="MD-" />
              </tr>
              <tr>
                  <td><g:checkBox name="product" value="Laptop" checked="${dealer?.products?.containsKey('Laptop')}" /></td>
                  <td>Laptop</td>
                  <td>DLAP-</td>
                  <g:hiddenField name="prefixCode" value="DLAP-" />
              </tr>
          </tbody>
      </table>


        </div>
        <div style="">
          <g:submitButton name="Save" style="padding:5px 25px;"/>

       </div>

          </g:form>
      </div>
  </div>

   <script>
        $(document).ready(function() {

            // Handle Division selection change
            $("#divisionSelect").change(function() {
                var divisionId = $(this).val();

                if (divisionId) {
                    $.ajax({
                        url: "${createLink(controller: 'dealer', action: 'getDistrictsByDivision')}/" + divisionId,
                        type: "GET",
                        dataType: "json",
                        success: function(response) {
                            var districtDropdown = $("#districtSelect");
                            districtDropdown.empty();
                            districtDropdown.append('<option value="">-- Select District --</option>');

                            $.each(response, function(index, district) {
                                districtDropdown.append('<option value="' + district.id + '">' + district.name + '</option>');
                            });
                        },
                        error: function(xhr, status, error) {
                            alert("Error fetching districts: " + error);
                        }
                    });
                } else {
                    $("#districtSelect").empty().append('<option value="">-- Select District --</option>');
                    $("#postOfficeSelect").empty().append('<option value="">-- Select Post Office --</option>');
                }
            });

            // Handle District selection change
            $("#districtSelect").change(function() {
                var districtId = $(this).val();

                if (districtId) {
                    $.ajax({
                        url: "${createLink(controller: 'dealer', action: 'getPostOfficesByDistrict')}/" + districtId,
                        type: "GET",
                        dataType: "json",
                        success: function(response) {
                            var postOfficeDropdown = $("#postOfficeSelect");
                            postOfficeDropdown.empty();
                            postOfficeDropdown.append('<option value="">-- Select Post Office --</option>');

                            $.each(response, function(index, postOffice) {
                                postOfficeDropdown.append('<option value="' + postOffice.id + '">' + postOffice.name + '</option>');
                            });
                        },
                        error: function(xhr, status, error) {
                            alert("Error fetching post offices: " + error);
                        }
                    });
                } else {
                    $("#postOfficeSelect").empty().append('<option value="">-- Select Post Office --</option>');
                }
            });
        });
    </script>

</body>

</html>