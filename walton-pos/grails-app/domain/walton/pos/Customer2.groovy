package walton.pos

class Customer2 {
    String accountNo
    String customerName
    String customerAddress
    String custId
    String customerNid
    String mobile


    //static hasMany = [sales: POS_SALE_MST]

    static constraints = {
        accountNo blank: false, unique: true
        mobile blank: false, unique: true
        customerAddress nullable:false


    }
}
