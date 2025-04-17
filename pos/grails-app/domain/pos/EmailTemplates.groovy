package pos

class EmailTemplates {
    static mapping = {
        table 'email_templates1122'

    }
    String code
    String body
    static constraints = {
        code blank: false, unique: true, maxSize: 50
        body blank: false, maxSize: 10000
    }
}
