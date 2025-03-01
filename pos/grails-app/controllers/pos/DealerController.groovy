package pos

class DealerController {

    def index() {
        def dealers=Dealer.list()
        [dealers:dealers]
    }

    def create(){}
    def save(){
       def dealer=new Dealer(params)
        dealer.createdDate = new Date()
        if(dealer.save(flush:true))
        {
            flash.message="Dealer Added Successfully!!"
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
        def dealer=Dealer.get(id)

        if(dealer)
        {
            dealer.delete(flush: true)
            flash.message="Customer Deleted Successfully!!"
        }
        else{
            flash.message="Something went wrong"
        }
        redirect(action: "index")

    }

    def edit(Long id){
        def dealer=Dealer.get(id)
        [dealer:dealer]
    }

    //update customer

    def update(Long id) {
        log.debug("Updating dealer with ID: $id")
        def dealer = Dealer.get(id)

        if (!dealer) {
            flash.message = "Dealer not found"
            redirect(action: "edit")
            return
        }

        // If dealer exists, update fields
        dealer.code = params.code
        dealer.plazaName = params.plazaName
        dealer.dealerName = params.dealerName
        dealer.phone = params.phone
        dealer.showroomSize = params.showroomSize?.toInteger()
        dealer.showroomAddress = params.showroomAddress
        dealer.previousStatus = params.previousStatus
        dealer.currentStatus = params.currentStatus

        // If you want to keep the createdDate the same and set an updatedDate:
        dealer.createdDate = new Date()

        // Save changes
        if (!dealer.save(flush: true)) {
            flash.message = "Failed to update dealer"
            redirect(action: "edit")
            return
        }

        // Redirect to index after successful update
        redirect(action: "index")
    }


    def view(Long id)
    {
        def dealer=Dealer.get(id)
        [dealer:dealer]
    }

    //search customer



        def search() {
            def phone = params.phone
            def code = params.code

            def dealers = Dealer.where {
                if (phone) {
                    phone ==~ "%${phone}%"
                }
                if (code) {
                    code ==~ "%${code}%"
                }
            }.list()

            render(view: "search", model: [dealers: dealers])
        }
    }


