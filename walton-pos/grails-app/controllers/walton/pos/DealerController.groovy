package walton.pos

class DealerController {

    def defaultAction = "list"

    def list(){

    }

    def add()
    {
        def divisions = Division.list()
        def districts = District.list()
        def postOffices = PostOffice.list()
        def plazas=Plaza.list()

        render(view: "add", model: [
                divisions   : divisions,
                districts   : districts,
                postOffices : postOffices,
                plazas:plazas
        ])
    }

    def save() {
        def dealer = new Dealer(params)
        if (params.plaza) {
            dealer.plaza = Plaza.get(params.plaza as Long)
        }

        if (params.division) {
            dealer.division = Division.get(params.division as Long)
        }
        if (params.district) {
            dealer.district = District.get(params.district as Long)
        }
        if (params.postOffice) {
            dealer.postOffice = PostOffice.get(params.postOffice as Long)
        }


        dealer.code = "45945"
        dealer.previousStatus = "Recommended"
        dealer.currentStatus = "Approved"
        dealer.createdDate = new Date()
        dealer.actionBy = "A55332"
        println(dealer.isExclusive)
        println(dealer.dealerPointName)
        println(dealer.isMicr)
        println(dealer.remarks)
        if (dealer.save(flush: true)) {
            flash.message = "Dealer saved successfully!"
            redirect(action: "list")
        } else {
            flash.message = "Failed to save Dealer!"
            redirect(action: "add")
        }
    }


    def getDistrictsByDivision() {
        def divisionId = params.id
        def districts = District.findAllByDivision(Division.get(divisionId))

        def response = districts.collect { [id: it.id, name: it.name] }

        render response as grails.converters.JSON  // Return JSON response
    }

    def getPostOfficesByDistrict() {
        def districtId = params.id
        def postOffices = PostOffice.findAllByDistrict(District.get(districtId))

        def response = postOffices.collect { [id: it.id, name: it.name] }

        render response as grails.converters.JSON  // Return JSON response
    }

}
