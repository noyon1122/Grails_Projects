package walton.pos

class Customer {
    String cType
    String code
    Date created
    String createdBy
    Integer currentBalance
    String mobilePhone
    String modified
    String modifiedBy
    String name
    String nationalId
    String presentAddress

    static hasMany = [sales: Sales]

    static constraints = {
        cType(nullable: false, inList: ['Retail', 'Hire'])
        code(nullable: false, blank: false, unique: true, maxSize: 10)
        created(nullable: false)
        createdBy(nullable: false, blank: false, maxSize: 50)
        currentBalance(nullable: false, min: 0)
        mobilePhone(nullable: false, blank: false)
        modified(nullable: true, maxSize: 50)
        modifiedBy(nullable: true, maxSize: 50)
        name(nullable: false, blank: false, maxSize: 100)
        nationalId(nullable: false, blank: false, maxSize: 20, unique: true)
        presentAddress(nullable: true, maxSize: 255)
    }

    static mapping ={
        table 'POS_Customer_12032025'
    }
}
