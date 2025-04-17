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
        def customer = Customer.get(id)
        if (!customer) {
            flash.message = "Customer not found"
            redirect(action: "index")
            return
        }
        // Pass the customer to the GSP view
        [customer: customer]
    }

    //update customer

    def update(Long id) {

        // Using withTransaction
        Customer.withTransaction { tx ->
            try {
                // Fetch the customer by ID
                def customer = Customer.get(id)

                if (!customer) {
                    flash.message = "Customer not found with ID: $id"
                    redirect(action: "edit")  // Or any appropriate redirection
                    return
                }

                // Update customer information from the params
                customer.accountNo = params.accountNo
                customer.customerName = params.customerName
                customer.customerAddress = params.customerAddress
                customer.custId = params.custId
                customer.customerNid = params.customerNid

                // Save the updated customer object
                if (!customer.save(flush: true)) {
                    tx.setRollbackOnly()  // Mark for rollback if save fails
                    flash.message = "Failed to update customer. Errors: ${customer.errors}"
                    redirect(action: "edit", params: [id: id])  // Redirect back to form for correction
                    return
                }

                // Success - redirect to a success page or list
                flash.message = "Customer updated successfully!"
                redirect(action: "index")  // Or any appropriate action

            } catch (Exception e) {
                // If an exception occurs, rollback the transaction
                tx.setRollbackOnly()
                flash.message = "Error: ${e.message}"
                redirect(action: "edit", params: [id: id])  // Stay on the same page
            }
        }


//        println(id)
//        def customer = Customer.get(id)
//        if (!customer) {
//            flash.message = "Customer not Found"
//            redirect(action: "edit")
//            println("not found")
//            return
//        }
//        println(customer.customerNid)
//        println(params.customerNid)
//           // Update fields with params
//        customer.accountNo = params.accountNo
//        customer.customerName = params.customerName
//        customer.customerAddress = params.customerAddress
//        customer.custId = params.custId
//        customer.customerNid = params.customerNid
//
//
//
//
//        // Validate the customer object before saving
//        if (customer.save(flush: true)) {
//            println("Customer Updated")
//            redirect(action: "index")
//        } else {
//            flash.message = "Error while saving customer"
//            redirect(action: "edit", id: id)
//        }
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
