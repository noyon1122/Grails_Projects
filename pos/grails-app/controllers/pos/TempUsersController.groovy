package pos

class TempUsersController {

    def index() { }

    def save(){
        def user=new TempUsers(params)

        if(user.save(flush:true))
        {
            render "User Added Successfully!!"
        }
        else{
            render "Something went wrong!!"
        }
    }
}
