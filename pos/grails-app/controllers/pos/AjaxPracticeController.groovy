package pos
import grails.converters.JSON

class AjaxPracticeController {

    def index() { }

    def myAjaxAction()
    {
        def data = [message: "Hello from Grails!"]
        render data as JSON

    }
}
