package walton.pos

class PlazaController {

    def index() {
        def plazas=Plaza.findAll()
        [plazas:plazas]
    }

    def save(){
        def plaza=new Plaza(params)
        if(plaza.save(flush:true))
        {
            redirect(action:"index")
        }
        else{
            redirect(action:"index")
        }
    }


}
