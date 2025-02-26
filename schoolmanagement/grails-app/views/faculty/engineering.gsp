<html>
<head>
<meta name="layout" content="main"/>
</head>
<body>
<h1> Add your faculty information</h1>

<g:form controller="faculty" action="saveFaculty" method="POST">
 <label>Faculty Name</label>
 <g:textField name="facultyName" value="Engineering" required="true"/><br>

 <label>Department Name</label>
 <g:textField name="deptName" required="true"/> <br>

  <label>Location</label>
  <g:textField name="location" required="true"/> <br>

 <g:submitButton name="Save" />

</g:form>

</body>
</html>