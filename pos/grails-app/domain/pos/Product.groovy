package pos

class Product {
      Integer code
      Integer productId
      String model
      String organization
      Boolean isActive
      String description

    static constraints = {
        code nullable: false, blank: false, unique: true, min: 1
        productId nullable: false, blank: false, min: 1
        model nullable: false, blank: false, maxSize: 100
        organization nullable: false, blank: false, maxSize: 150
        isActive nullable: false
        description nullable: true, maxSize: 500
    }
}
