package walton.pos

import java.text.SimpleDateFormat

class POS_SALE_MSTController {

    def index(){}

    def sales2Service

    def list() {

        def sdf = new SimpleDateFormat("yyyy-MM-dd")
        Date fromDate = params.fromDate ? sdf.parse(params.fromDate) : null
        Date toDate = params.toDate ? sdf.parse(params.toDate) : null

        def sales = POS_SALE_MST.createCriteria().list {
            if (params.saleNo) {
                eq("saleNo", params.saleNo)
            }

            if (params.accountNo) {
                createAlias("customer", "c")
                eq("c.accountNo", params.accountNo)
            }

            // Search by mobile independently
            if (params.mobile) {
                if (!params.accountNo) {
                    createAlias("customer", "c") // Ensure alias is created if not already
                }
                eq("c.mobile", params.mobile)
            }

            //search by sales date
            if (fromDate && toDate) {
                between("saleDate", fromDate.clearTime(), toDate.clearTime() + 1)
            } else if (fromDate) {
                ge("saleDate", fromDate.clearTime())  // Greater than or equal to the fromDate
            } else if (toDate) {
                le("saleDate", toDate.clearTime() + 1)  // Less than or equal to the toDate
            }
        }

        [sales: sales, searchParams: params]
    }

    def retailSale(){}

    def add()
    {
        def customer=new Customer2()
        customer.customerName=params.customerName
        customer.customerNid=params.customerNid
        customer.customerAddress = params.customerAddress ?: "Gazipur"
        customer.mobile=params.mobile
        def uniquecustomerAcount = sales2Service.generateCustomerAcNo()
        def uniquecustomerId = sales2Service.generateCustomerId()
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

        def sale=new POS_SALE_MST()
        def uniqueSaleNo = sales2Service.generateSaleNo()

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
        def sale=POS_SALE_MST.get(id)
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
