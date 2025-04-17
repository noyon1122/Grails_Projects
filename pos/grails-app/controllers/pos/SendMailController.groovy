package pos


class SendMailController {
    def sendMailService

    def index() {

    }

    def saveTemplate() {
        def template = new EmailTemplates(params)

        if (template) {
            template.save(flush: true)
            render "Template Save successfully!!"
        } else {
            render "Something went wrong!!!"
        }

    }

    def addTemplates() {}

    def sendEmail() {
        String subject = params.subject
        Long templateId = params.long('template_id')
        def template = EmailTemplates.get(templateId)
        if (!template) {
            render "Email template not found!"
            return
        }
        def emailInput = params.emails ?: ""
        String ccRaw = params.ccEmails ?: ''
        List<String> emails = emailInput
                .split(",")
                .collect { it.trim() }
                .findAll { it } // Remove empty entries
        List<String> ccList = ccRaw ? ccRaw.split(',')*.trim().findAll { it } : []
        sendMailService.sendLoanEmailsToMultipleUsers(emails,ccList,subject,template.body)
        render "Emails are being sent to: ${emails.join(', ')}"
    }

//        def templates = EmailTemplates.findByCode("JOB123")
//        // Capture form data from the request
//        String to = params.to
//        String subject = params.subject
//        String body = templates.template
//        //def uploadedFile = request.getFile('image')
//
//
//        try {
//            boolean submitted = sendMailService.sendEmail(to, subject, body)
//            if (submitted) {
//                render "Email sent successfully!"
//            } else {
//                render "Failed to send email."
//            }
//        } catch (IllegalArgumentException e) {
//            render "Invalid Input."
//        }
//


//    def sendEmail() {
//        // SMTP server configuration
//        String host = "smtp.gmail.com"
//        int port = 587
//        final String username = "noyonhossain1177@gmail.com"
//        final String password = "dlqcwaedioycbktw"
//
//
//        // Email details
//        String to = "noyonhossain910@gmail.com"
//        String from = "noyonhossain1177@gmail.com"
//        String subject = "Test Email from Grails"
//        String body = "This is a test email sent from Grails 2.2.1 using raw JavaMail."
//
//        try {
//            // Set SMTP properties
//            Properties props = new Properties()
//            props.put("mail.smtp.auth", "true")
//            props.put("mail.smtp.starttls.enable", "true")
//            props.put("mail.smtp.host", host)
//            props.put("mail.smtp.port", port)
//
//            // Create a Session with authentication
//            Session session = Session.getInstance(props, new Authenticator() {
//                protected PasswordAuthentication getPasswordAuthentication() {
//                    return new PasswordAuthentication(username, password)
//                }
//            })
//
//            // Create the email message
//            MimeMessage message = new MimeMessage(session)
//            message.setFrom(new InternetAddress(from))
//            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to))
//            message.setSubject(subject)
//            message.setText(body)
//
//            // Send the email
//            Transport.send(message)
//
//            render "Email sent successfully!"
//        } catch (MessagingException e) {
//            render "Failed to send email: ${e.message}"
//        }
//    }
}