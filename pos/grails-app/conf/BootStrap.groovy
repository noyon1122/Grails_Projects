class BootStrap {



    def threadPoolService

    def init = { servletContext ->
        // Initialization code
    }

    def destroy = {
        threadPoolService.shutdown()
    }
}
