<!DOCTYPE html>
<html>
<head>
    <title>AJAX in Grails</title>
   <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>

    <button id="ajaxButton">Get Data</button>
    <div id="response"></div>

  <script>
      $(document).ready(function() {
          console.log("jQuery is working!");

          $("#ajaxButton").click(function() {
              $.ajax({
                  url: "${createLink(controller: 'ajaxPractice', action: 'myAjaxAction')}",
                  type: "GET",
                  dataType: "json",  // Expecting JSON response
                  success: function(response) {
                      console.log("Success:", response);
                      $("#response").html(response.message);  // Show JSON message
                  },
                  error: function(xhr, status, error) {
                      console.error("AJAX Error:", status, error);
                      alert("Error: " + xhr.responseText);
                  }
              });
          });
      });
  </script>
</body>
</html>
