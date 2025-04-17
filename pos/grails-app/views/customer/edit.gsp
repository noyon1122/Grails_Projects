<html lang="en">
<head>
    <title>Update Customer</title>
     <g:render template="/layouts/heading" />
</head>
<body>

    <div>
        <div>Update Customer</div>
         <g:form action="update" method="POST">

                    <!-- Hidden ID field -->
                      <input type="hidden" name="id" value="${customer.id}" />

                    <div style="display: flex; gap: 40px;">
                                   <div style="flex: 1;">
                                       <label>A/C No.</label>
                                       <g:textField name="accountNo" value="${customer.accountNo}" />
                                   </div>
                                   <div style="flex: 1;">
                                       <label>Name</label>
                                       <g:textField name="customerName" value="${customer.customerName}" />
                                   </div>
                               </div>

                               <div style="display: flex; gap: 40px;">
                                   <div style="flex: 1;">
                                       <label>Customer Address</label>
                                       <g:textField name="customerAddress" value="${customer.customerAddress}" />
                                   </div>
                               </div>

                               <div style="display: flex; gap: 40px;">
                                   <div style="flex: 1;">
                                       <label>Customer Id</label>
                                       <g:textField name="custId" value="${customer.custId}" />
                                   </div>
                                   <div style="flex: 1;">
                                       <label>Current Customer Nid</label>
                                       <g:field name="customerNid" type="number" value="${customer.customerNid}" />
                                   </div>
                               </div>


                    <g:submitButton name="update" class="submit-btn" value="Update Customer" />

                </g:form>
    </div>

</body>
</html>
