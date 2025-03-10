package pos

class Customer {

    String accountNo
    String customerName
    String customerAddress
    String custId
    String customerNid
    String mobile


    static hasMany = [sales: Sale]

    static constraints = {
        accountNo blank: false, unique: true
        mobile blank: false, unique: true
        customerAddress nullable:false


    }
}
