package pos

class CustomerController {

    def index() {
        def customers=Customer.list()
        [customers:customers]
    }

    def create(){}
    def save(){
        def customer =new Customer(params)

        if(customer.save(flush:true))
        {
            flash.message="Customer Added Successfully!!"
            redirect(action:"index")
        }
        else{
            flash.message="Something went wrong"
            redirect(action: "create")
        }
    }

    //delete customer from the database
     def delete(Long id)
     {
         def customer=Customer.get(id)

         if(customer)
         {
             customer.delete(flush: true)
             flash.message="Customer Deleted Successfully!!"
         }
         else{
             flash.message="Something went wrong"
         }
         redirect(action: "index")

     }

    def edit(Long id){
        def customer=Customer.get(id)
        [customer:customer]
    }

    //update customer

    def update(Long id)
    {
        def customer=Customer.get(id)

        if(!customer)
        {
            flash.message="Customer not Found"
            redirect(action: "edit")
        }

        customer.properties=params

        customer.save(flush: true)
        redirect(action: "index")
    }

    def view(Long id)
    {
        def customer=Customer.get(id)
        [customer:customer]
    }

    //search customer

    def search() {
        def query = params.name

        if (query) {
            def customers = Customer.createCriteria().list {
                or {
                    ilike("accountNo", "%${query}%")
                    ilike("customerName", "%${query}%")
                    ilike("mobile", "%${query}%")
                    ilike("product", "%${query}%")
                    ilike("type", "%${query}%")

                }
            }

            if (customers) {
                [customers: customers]
            } else {
                flash.message = "No results found"
                redirect(action: "index")
            }
        } else {
            flash.message = "Please provide a search query"
            redirect(action: "index")
        }
    }
    def dealer(){
        def customers=Customer.findAllByTypeLike("%Hire%")

        if(customers)
        {
            [customers:customers]
        }
        else{
            redirect(action: "index")
        }
    }

    def createdealer(){

    }

    def dealersave(){
        def customer =new Customer(params)

        if(customer.save(flush:true))
        {
            flash.message="Customer Added Successfully!!"
            redirect(action:"dealer")
        }
        else{
            flash.message="Something went wrong"
            redirect(action: "createdealer")
        }
    }
}
