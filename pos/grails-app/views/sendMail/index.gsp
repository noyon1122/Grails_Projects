<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Send HTML Email</title>
</head>
<body>
    <h2>Send HTML Email</h2>

    <g:form action="sendEmail" method="POST">

        <label for="to">To:</label><br>
        <input type="text" name="emails" required /><br><br>

        <label for="cc">CC:</label><br>
        <input type="text" name="ccEmails" /><br><br>

        <label for="subject">Subject:</label><br>
        <input type="text" name="subject"  /><br><br>

        <g:select from="${pos.EmailTemplates.list()}"
                  name="template_id"
                  optionKey="id"
                  optionValue="code"
                  noSelection="${['': '--Select Template--']}"
                  value="${params?.template_id}"
                  class="combobox small-szed"
                  id="templateId"/> <br><br>

        <button type="submit">Send</button>
    </g:form>
</body>
</html>
