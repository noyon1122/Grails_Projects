package walton.pos

class Sales {
    Integer cashPrice
    Integer cashRebate
    Integer cashReceived
    Integer collectableAmt
    Integer collectedAmt
    Date created
    String createdBy
    Integer downPayment
    Integer gainOn
    Integer hmrpProfit
    Integer instnMonth
    Date installmentEndDate
    Date installmentNextDate
    Integer installmentNo
    Date installmentStartDate
    Integer invoicePrice
    Boolean isPaid
    Boolean isDelivery
    Integer lrpCollection
    Date lrpDate
    Integer lrpRebate
    Date modified
    String modifiedBy
    Integer mrp
    Integer plazaId
    Integer priceMstId
    Integer rebate
    Integer restAmount
    Integer sgTotal
    Integer sNumber
    Integer sTotal
    String sType

    static belongsTo = [customer: Customer]
    static hasMany = [details: SalesDetails]
    static constraints = {

        cashPrice(nullable: false, min: 0)
        cashRebate(nullable: true, min: 0)
        cashReceived(nullable: false, min: 0)
        collectableAmt(nullable: false, min: 0)
        collectedAmt(nullable: true, min: 0)
        created(nullable: false)
        createdBy(nullable: false, blank: false, maxSize: 50)
        downPayment(nullable: true, min: 0)
        gainOn(nullable: true, min: 0)
        hmrpProfit(nullable: true, min: 0)
        instnMonth(nullable: true, min: 1)
        installmentEndDate(nullable: true)
        installmentNextDate(nullable: true)
        installmentNo(nullable: true, min: 1)
        installmentStartDate(nullable: true)
        invoicePrice(nullable: false, min: 0)
        isPaid(nullable: false)
        isDelivery(nullable: false)
        lrpCollection(nullable: true, min: 0)
        lrpDate(nullable: true)
        lrpRebate(nullable: true, min: 0)
        modified(nullable: true)
        modifiedBy(nullable: true, maxSize: 50)
        mrp(nullable: false, min: 0)
        plazaId(nullable: false, min: 1)
        priceMstId(nullable: false, min: 1)
        rebate(nullable: true, min: 0)
        restAmount(nullable: true, min: 0)
        sgTotal(nullable: true, min: 0)
        sNumber(nullable: false, min: 1)
        sTotal(nullable: false, min: 0)
        sType(nullable: false, blank: false, inList: ['Cash', 'Installment', 'Credit'], maxSize: 20)
    }

    static mapping ={
        table 'POS_SALE_MST_12032025'
    }
}
