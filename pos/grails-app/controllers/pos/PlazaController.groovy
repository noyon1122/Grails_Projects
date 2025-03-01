package pos

class PlazaController {

    def index() {
        def plazas=Plaza.list()
        [plazas:plazas]
    }

    def create(){}

  //save plaza item
    def save(){
        def plaza=new Plaza(params)

        if(plaza.save(flush:true))
        {
            flash.message="New Plaza Added"
            redirect(action:"index")
        }
        else{
            flash.message="Something went wrong"
            redirect(action: "create")
        }
    }

    //delete plaza by id

    def delete(Long id){
        def plaza=Plaza.get(id)

        if(plaza)
        {
            plaza.delete(flush:true)
            flash.message="Plaza item deleted successfully"
        }
        else{
            flash.message="Something went wrong"
        }
        redirect(action: "index")
    }

    def edit(Long id)
    {
        def plaza = Plaza.get(id)
        [plaza:plaza]
    }


    def update(Long id)
    {
        // Retrieve the existing Student by ID
        def student = Plaza.get(id)

        // Check if the student exists
        if (!student) {
            flash.message = "Student not found."
            redirect(action: "edit")
            return
        }

        // Bind form data (params) to the existing Student instance
        // student.properties = params
        student.name= params.name
        student.email= params.email
        student.phone= params.phone
        student.address= params.address
        student.status= params.status
        student.vat= params.vat
        student.save(flush:true)
        // Success message and redirect to the show action
        flash.message = "Student updated successfully!"
        redirect(action: "index")

    }


    //search plaza item
    def search() {
        def query = params.name

        if (query) {
            def plazas = Plaza.createCriteria().list {
                or {
                    ilike("name", "%${query}%")
                    ilike("email", "%${query}%")
                    ilike("phone", "%${query}%")
                    ilike("address", "%${query}%")
                }
            }

            if (plazas) {
                [plazas: plazas]
            } else {
                flash.message = "No results found"
                redirect(action: "index")
            }
        } else {
            flash.message = "Please provide a search query"
            redirect(action: "index")
        }
    }




}
