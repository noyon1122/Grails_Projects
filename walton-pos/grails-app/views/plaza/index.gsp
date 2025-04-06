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
    <div class="div-header">New Plaza Application</div>

    <div>
    <g:form action="save" method="POST">
    <label>Name </label>
    <g:textField name="name" class="form-input" />
    <g:submitButton name="Save" style="padding:5px 25px;"/>
    </g:form>
    </div>

     <table class="">
              <thead>
                  <tr>
                      <th>Plaza</th>
                  </tr>
              </thead>

              <tbody>
                  <g:each var="plaza" in="${plazas}">
                      <tr class="sale-row" onmouseover="this.classList.add('hover')" onmouseout="this.classList.remove('hover')">
                          <td>${plaza.name}</td>
                      </tr>
                  </g:each>
              </tbody>
          </table>

  </div>
</body>

</html>