package walton.pos

class Dealer {
    String code
    String plazaName
    String dealerName
    Integer showroomSize
    String showroomAddress
    Integer idNo
    Integer dealerNumber
    String division
    String district
    String postOffice
    String poroshoba
    String village
    String proprietorName
    String propPresentAddress
    String propPermanentAddress
    String propMobile1
    String propMobile2
    String propNid
    String propBankAccountName
    String propBankAccount
    String propBankName
    String propBankBranch
    String propGuardian
    String propGuardianMobile
    Boolean isExclusive
    String dealerPointName
    Boolean isMicr
    String remarks
    String product
    String prefixCode
    String previousStatus
    String currentStatus
    Date createdDate
    String actionBy

    static hasOne = [uniqueDealer: UniqueDealer]
    static mapping = {
        table 'POS_Dealer1303'
        id generator: 'increment'
    }
    static constraints = {
        code(nullable: false, blank: false, maxSize: 50, unique: true)
        plazaName(nullable: false, blank: false, maxSize: 100)
        dealerName(nullable: false, blank: false, maxSize: 100)
        showroomAddress(nullable: false, blank: false, maxSize: 255)
        showroomSize(nullable: false, min: 0)
        dealerNumber(nullable: false, min: 0)
        division(nullable: false, blank: false, maxSize: 50)
        district(nullable: false, blank: false, maxSize: 50)
        postOffice(nullable: true, blank: true, maxSize: 50)
        poroshoba(nullable: true, blank: true, maxSize: 50)
        village(nullable: true, blank: true, maxSize: 50)
        proprietorName(nullable: false, blank: false, maxSize: 100)
        propPresentAddress(nullable: false, blank: false, maxSize: 255)
        propPermanentAddress(nullable: true, blank: true, maxSize: 255)
        propMobile1(nullable: false, blank: false, maxSize: 15)
        propMobile2(nullable: true, blank: true, maxSize: 15)
        propNid(nullable: true, blank: true, maxSize: 20)
        propBankAccountName(nullable: true, blank: true, maxSize: 100)
        propBankAccount(nullable: true, blank: true, maxSize: 50)
        propBankName(nullable: true, blank: true, maxSize: 100)
        propBankBranch(nullable: true, blank: true, maxSize: 100)
        propGuardian(nullable: true, blank: true, maxSize: 100)
        propGuardianMobile(nullable: true, blank: true, maxSize: 15)
        isExclusive(nullable: true)
        dealerPointName(nullable: true, blank: true, maxSize: 100)
        isMicr(nullable: true)
        remarks(nullable: true, blank: true, maxSize: 500)
        product(nullable: true, blank: true, maxSize: 100)
        prefixCode(nullable: true, blank: true, maxSize: 20)
        previousStatus(nullable: true, blank: true, maxSize: 50)
        currentStatus(nullable: false, blank: false, maxSize: 50)
        createdDate(nullable: false)
        actionBy(nullable: false, blank: false, maxSize: 50)
    }
}
