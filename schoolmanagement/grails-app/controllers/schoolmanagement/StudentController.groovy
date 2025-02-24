package schoolmanagement

class StudentController {

    def index() {
        def students=Student.list()
        [students:students]
    }

    def create(){}

    def save(){
        def student =new Student(params)

        if(student.save(flush:true))
        {
            flash.message="Student Added Successfully"
            redirect(action:"index")
        }
        else{
            redirect(action: "create")
        }
    }

    def delete(Long id)
    {
        def student=Student.get(id)

        if(student)
        {
            student.delete(flush:true)
            flash.message="Student Deleted Successfully"

        }else{
            flash.message="Something went wrong"
        }
        redirect(action:"index")
    }
def edit(Long id)
{
    def student =Student.get(id)
    [student:student]
}

    def update(Long id)
    {
        // Retrieve the existing Student by ID
        def student = Student.get(id)

        // Check if the student exists
        if (!student) {
            flash.message = "Student not found."
            redirect(action: "edit")
            return
        }

        // Bind form data (params) to the existing Student instance
       // student.properties = params
        student.name= params.name
        student.dept= params.dept
        student.phone= params.phone
        student.save(flush:true)
        // Success message and redirect to the show action
        flash.message = "Student updated successfully!"
        redirect(action: "index")

    }

    def search() {
        def query = params.name

        if (query) {
            //this statement for a single field
           // def student = Student.findByName(query)

            def students = Student.createCriteria().list {
                or {
                    ilike("name", "%${query}%")
                    ilike("dept", "%${query}%")
                    ilike("phone", "%${query}%")
                }
            }

            if (students) {
                [students: students]

            } else {
                flash.message = "User not found with name: ${query}"
                redirect(action: "index")
            }


        }
    }





}
