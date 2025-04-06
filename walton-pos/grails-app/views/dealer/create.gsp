<!DOCTYPE html>
<html>
<head>
    <title>Manage Division & District</title>
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
    <label for="postOfficeSelect">Select District:</label>
    <select id="postOfficeSelect">
        <option value="">-- Select PostOffice --</option>
    </select>

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
