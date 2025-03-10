package pos

class SaleService {

    def serviceMethod() {

    }

    def generateSaleNo() {
        def random = new Random()
        def uniqueNumber

        // Loop until we find a unique 6-digit number
        while (true) {
            // Generate a random alphanumeric string (e.g., "WC123456")
            uniqueNumber = "IN" + (100000 + random.nextInt(900000))

            // Ensure the string is unique in the database (update with your class and field)
            if (!Sale.findBySaleNo(uniqueNumber)) {
                break
            }
        }
        return uniqueNumber
    }

    def generateCustomerAcNo() {
        def random = new Random()
        def uniqueNumber

        while (true) {
            // Generate a random alphanumeric string (e.g., "WC123456")
            uniqueNumber = "WCA" + (100000 + random.nextInt(900000))

            // Ensure the string is unique in the database (update with your class and field)
            if (!Customer.findByAccountNo(uniqueNumber)) {
                break
            }
        }
        return uniqueNumber
    }

    def generateCustomerId() {
        def random = new Random()
        def uniqueNumber

        // Loop until we find a unique 6-digit number
        while (true) {
            // Generate a random alphanumeric string (e.g., "WC123456")
            uniqueNumber = "WC" + (100000 + random.nextInt(900000))

            // Ensure the string is unique in the database (update with your class and field)
            if (!Customer.findByCustId(uniqueNumber)) {
                break
            }
        }
        return uniqueNumber

    }
}
