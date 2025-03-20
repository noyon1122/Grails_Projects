package walton.pos

class SalesDetails {
    String barCode
    Integer cashReceived
    Integer cashRebate
    Integer collectableAmt
    Date created
    String createdBy
    Integer downPayment
    Integer InstnMonth
    Date modified
    String modifiedBy
    Integer mrp
    String priceDtlsId
    Integer restAmount
    Integer gTotal
    Integer rate
    Integer sTotal

    static belongsTo = [sales: Sales]
    static constraints = {
        barCode(nullable: false, blank: false, maxSize: 50, unique: true)
        cashReceived(nullable: false, min: 0)
        cashRebate(nullable: true, min: 0)
        collectableAmt(nullable: false, min: 0)
        created(nullable: false)
        createdBy(nullable: false, blank: false, maxSize: 50)
        downPayment(nullable: true, min: 0)
        instnMonth(nullable: true, min: 1)
        modified(nullable: true)
        modifiedBy(nullable: true, blank: true, maxSize: 50)
        mrp(nullable: false, min: 0)
        priceDtlsId(nullable: false, blank: false, maxSize: 30)
        restAmount(nullable: true, min: 0)
        gTotal(nullable: false, min: 0)
        rate(nullable: false, min: 0)
        sTotal(nullable: false, min: 0)
    }

    static mapping ={
        table 'POS_SALE_DTLS_12032025'
    }
}
