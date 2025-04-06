package pos

class DivisionController {
    def index() {
        def divisions = Division.list()  // Fetch all divisions
        def districts = District.list()  // Fetch all districts
        [divisions: divisions, districts: districts]
    }

    def ajaxCode() {
        def divisions = Division.list()  // Fetch all divisions
        def districts = District.list()  // Fetch all districts
        [divisions: divisions, districts: districts]
    }

    def getDistrictsByDivision() {
        def divisionId = params.id
        def districts = District.findAllByDivision(Division.get(divisionId))

        def response = districts.collect { [id: it.id, name: it.name] }

        render response as grails.converters.JSON  // Return JSON response
    }

}
