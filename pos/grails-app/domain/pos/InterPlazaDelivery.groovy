package pos

class InterPlazaDelivery {
    String code
    String deliveryFrom
    String deliveryTo
    Integer disbursedQty
    Integer receivedQty
    Date createdDate
    static constraints = {
        code nullable: false, blank: false, maxSize: 50, unique: true
        deliveryFrom nullable: false, blank: false, maxSize: 100
        deliveryTo nullable: false, blank: false, maxSize: 100
        disbursedQty nullable: false, min: 0
        receivedQty nullable: false, min: 0
        createdDate nullable: false
    }


}
