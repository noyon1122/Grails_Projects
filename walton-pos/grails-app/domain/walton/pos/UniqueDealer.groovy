package walton.pos

class UniqueDealer {
     Date depositDate
     String partyInfo
     String bankName
     String branchName
     String depositBankAccount
     String paymentMode
     Integer depositAmount
     String slipNo
     String depositBranchName
     String attachment
     String narration
     Date createdDate

    static mapping = {
        table 'POS_UniqueDealer1303'
        id generator: 'increment'
    }


    static belongsTo = [dealer: Dealer]
    static constraints = {
        depositDate(nullable: false)
        partyInfo(nullable: false, blank: false, maxSize: 100)
        bankName(nullable: false, blank: false, maxSize: 50)
        branchName(nullable: false, blank: false, maxSize: 50)
        depositBankAccount(nullable: false, blank: false, maxSize: 30)
        paymentMode(nullable: false, blank: false, inList: ['Cash', 'Cheque', 'Online'])
        depositAmount(nullable: false, min: 0)
        slipNo(nullable: true, blank: true, maxSize: 50)
        depositBranchName(nullable: true, blank: true, maxSize: 50)
        attachment(nullable: true, blank: true, maxSize: 255)
        narration(nullable: true, blank: true, maxSize: 500)
        createdDate(nullable: false)
    }

}
