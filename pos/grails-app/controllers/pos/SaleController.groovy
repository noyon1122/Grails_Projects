package pos

class SaleController {
    def saleService
    def list() {
        def searchTerm = params.saleNo ?: ""

        def sales = Sale.createCriteria().list {
            if (searchTerm) {
                eq("saleNo", searchTerm) // Case-insensitive search
            }
        }

        [sales: sales, searchTerm: searchTerm]

    }

    def retailSale(){}

    def add()
    {
        def customer=new Customer()
        customer.customerName=params.customerName
        customer.customerNid=params.customerNid
        customer.customerAddress = params.customerAddress ?: "Gazipur"
        customer.mobile=params.mobile
        def uniquecustomerAcount = saleService.generateCustomerAcNo()
        def uniquecustomerId = saleService.generateCustomerId()
        customer.accountNo=uniquecustomerAcount
        customer.custId=uniquecustomerId

        println(customer.customerName)
        println(customer.customerNid)
        println(customer.customerAddress)
        println(customer.mobile)
        println(uniquecustomerAcount)
        println(uniquecustomerId)
        if(customer.save(flush: true))
        {

        }

        def sale=new Sale()
        def uniqueSaleNo = saleService.generateSaleNo()

        sale.grandTotal=params.grandTotal.toInteger()
        sale.cash=params.cash.toInteger()
        sale.saleBy=params.saleBy
        sale.saleDate=new Date()
        sale.saleNo =uniqueSaleNo
        sale.priceType="WT Cash Price"
        sale.saleType="Cash"
        sale.customer=customer
          println(sale)

        if(sale.save(flush:true))
        {
            redirect(action:"list")
        }
        else{
            redirect(action: "retailSale")
        }
    }

    def show(Long id)
    {
        def sale=Sale.get(id)
        [sale:sale];
    }

    def search()
    {
        def sale=params.saleNO
        def sales = Sale.createCriteria().list {
            eq("saleNo", sale) // Exact match
        }
        return sales
    }
}
