package pos

class SalesCertificateController {

    def index() {
        def sales=SalesCertificate.list()
        [sales:sales]
    }

    def create(){}

    def save(){
        def sale= new SalesCertificate(params)
        sale.createdDate = new Date()

        if(sale.save(flush:true))
        {
            redirect(action:"index")
        }
        else{
            redirect(action: "create")
        }

    }

    def view (Long id){
        def sale=SalesCertificate.get(id)
        sale.createdDate = new Date()
        [sale:sale]
    }

    def search() {

        def invoiceNo = params.invoiceNo
        def chassisNo =params.chassisNo


        def sales = SalesCertificate.where {
            if (chassisNo) {
                chassisNo ==~ "%${chassisNo}%"
            }
            if (invoiceNo) {
                invoiceNo ==~ "%${invoiceNo}%"
            }


        }.list()

        render(view: "search", model: [sales: sales])
    }
}
