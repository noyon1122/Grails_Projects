package pos

class Sale {

      String saleNo
      String saleType
      Integer grandTotal
      String priceType
      Integer cash
      Date saleDate
      String saleBy
    static belongsTo = [customer: Customer]
    static constraints = {

        saleNo nullable: false, unique: true
        saleType nullable: false, blank: false, inList: ['Cash', 'Credit']
        grandTotal nullable: false, min: 0
        priceType nullable: false, blank: false, maxSize: 20
        cash nullable: true, min: 0
        saleDate nullable: false
        saleBy nullable: false, blank: false

    }
}
