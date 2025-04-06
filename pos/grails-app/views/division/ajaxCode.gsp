<!DOCTYPE html>
<html>
<head>
    <title>Manage Division & District</title>
    <g:render template="/layouts/heading" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>

    <label for="divisionSelect">Select Division:</label>
    <select id="divisionSelect">
        <option value="">-- Select Division --</option>
        <g:each var="division" in="${divisions}">
            <option value="${division.id}">${division.name}</option>
        </g:each>
    </select>

    <label for="districtSelect">Select District:</label>
    <select id="districtSelect">
        <option value="">-- Select District --</option>
    </select>

    <script>
    $(document).ready(function(){
          $("#divisionSelect").change(function(){
            var divisionId= $(this).val();
             if(divisionId) {
             $.ajax({
             url: "${createLink(controller: 'division', action: 'getDistrictsByDivision')}/" + divisionId,
             type: "GET",
             dataType: "json",
             success: function(response){
               var districtDropdown= $("#districtSelect");
               districtDropdown.empty();
               districtDropdown.append('<option value="">-- Select District--</option>');

               $.each(response, function(index,district){
                  districtDropdown.append('<option value="'+ district.id +'">' + district.name + '</option>');
               });
             },
             error: function(xhr,status,error)
             {
              alert("Error Fetching ", error);
             }
             });
             }else{
                $("#districtSelect").empty().append('<option value="" > -- Select District --</option>');
             }
          });
    });
    </strict>
</body>
</html>
