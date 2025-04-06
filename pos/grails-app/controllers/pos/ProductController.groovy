package pos

class ProductController {
    static defaultAction = "list"
    def list() {
        def products=Product.findAll()
        [products:products]
    }

    def create(){}

    def add(){
        def product = new Product(params)

        if (params.formToken != session.formToken) {
            flash.message = "Form already submitted or invalid."
            redirect(action: "create")
            return
        }

        session.removeAttribute("formToken")

        if(product.save(flush:true))
        {
            flash.message="Customer Added Successfully!!"
            redirect(action:"create")
        }
        else{
            flash.message="Something went wrong"
            redirect(action: "create")
        }
    }
}
