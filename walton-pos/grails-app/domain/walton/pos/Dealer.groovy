package walton.pos

class Dealer {

    Plaza plaza
    String dealerName
    Integer showroomSize
    String showroomAddress
    Integer dealerNumber
    Division division
    District district
    PostOffice postOffice
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
    String code
    String previousStatus
    String currentStatus
    Date createdDate
    String actionBy


    static mapping = {
        table 'POS_Dealer1404'
        id generator: 'increment'

    }

}
