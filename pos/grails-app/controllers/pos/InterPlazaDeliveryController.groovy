package pos

import java.text.SimpleDateFormat

class InterPlazaDeliveryController {

    def index() {
        def interPlazaDeliveryLists = InterPlazaDelivery.findAll()
        [interPlazaDeliveryLists: interPlazaDeliveryLists]
    }

    def create() {

    }

    def add() {
        def interPlaza = new InterPlazaDelivery()
        interPlaza.code = params.code
        interPlaza.deliveryFrom = params.deliveryFrom
        interPlaza.deliveryTo = params.deliveryTo
        interPlaza.disbursedQty = params.disbursedQty.toInteger()
        interPlaza.receivedQty = params.receivedQty.toInteger()
        SimpleDateFormat date_format = new SimpleDateFormat("yyyy-MM-dd")
        Date fromDate = date_format.parse(params.createdDate)

        if (params.createdDate) {
            //def date = Date.parse("yyyy-MM-dd", params.createdDate)
            interPlaza.createdDate =fromDate
        }
        if (interPlaza.save(flush: true)) {
            redirect(action: "index")
        } else {
            redirect(action: "create")
        }
    }

    def view(Long id)
    {
        def interPlaza=InterPlazaDelivery.get(id)
        [interPlaza:interPlaza]
    }
}
