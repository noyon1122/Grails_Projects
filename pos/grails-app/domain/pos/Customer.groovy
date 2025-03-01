package pos

class Customer {

    String accountNo
    String customerName
    String type
    String product
    String mobile
    Integer balance
    String isLitigate
    String isRecovery

    static constraints = {
        accountNo blank: false, unique: true
        mobile blank: false, unique: true


    }
}
