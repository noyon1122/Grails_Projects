package pos

import javax.mail.*
import javax.mail.internet.*

class SendMailService {

    def grailsApplication
    def threadPoolService

    def sendEmail(String to,List<String> ccList, String subject, String body) {

        Runnable emailTask = {
            def smtp = grailsApplication.config.smtp
            final String username = smtp.username
            final String password = smtp.password
            String from = smtp.from

            try {
                Properties props = new Properties()
                props.put("mail.smtp.auth", smtp.props["mail.smtp.auth"])
                props.put("mail.smtp.starttls.enable", smtp.props["mail.smtp.starttls.enable"])
                props.put("mail.smtp.host", smtp.host)
                props.put("mail.smtp.port", smtp.port.toString())

                Session session = Session.getInstance(props, new Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password)
                    }
                })

                MimeMessage message = new MimeMessage(session)
                message.setFrom(new InternetAddress(from))
                message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to))
                if (ccList && !ccList.isEmpty()) {
                    message.setRecipients(Message.RecipientType.CC, InternetAddress.parse(ccList.join(',')))
                }
                message.setSubject(subject)

                MimeBodyPart htmlPart = new MimeBodyPart()
                htmlPart.setContent(body, "text/html; charset=utf-8")

                Multipart multipart = new MimeMultipart()
                multipart.addBodyPart(htmlPart)
                message.setContent(multipart)

                Transport.send(message)
                log.info "Email sent to ${to}"
            } catch (Exception e) {
                log.error "Failed to send email to ${to}: ${e.message}", e
            }
        }

        threadPoolService.execute(emailTask)
        return true
    }

    def sendLoanEmailsToMultipleUsers(List<String> emailList, List<String> ccList,String subject,String body) {
        emailList.each { email ->
            def loanInfo = TempUsers.findByEmail(email)
            if (!loanInfo) {
                log.warn "No loan info found for email: ${email}"
                return
            }

            def name = loanInfo.name
            def loanAmount = "৳${loanInfo.loan?.toString()?.replaceAll(/\.0+$/, '')}"

            def updatedBody = body
                    .replace('${name}', name)
                    .replace('${loanAmount}', loanAmount)

            sendEmail(email,ccList, subject, updatedBody)
        }
    }

}
