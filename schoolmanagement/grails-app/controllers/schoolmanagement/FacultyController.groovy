package schoolmanagement

class FacultyController {

    def index() {
        def faculties=Faculty.findAll()
        [faculties:faculties]
    }

//    def engineering(){
//    }

//    def home(){
//        def faculties=Faculty.list()
//        [faculties:faculties]
//    }
    def engineering(){}
    def lifeScience(){}
    def saveFaculty(){
        def faculty=new Faculty(params)

        if(faculty.save(flush:true))
        {
            flash.message="Faculty Information is added!!"
            redirect(action: "index")
        }
        else{
            flash.message="Something went wrong!!"
            redirect(action:"")
        }
    }
}
