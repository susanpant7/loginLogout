package loginLogout

import grails.plugin.springsecurity.annotation.Secured

//@Secured(['ROLE_USER','ROLE_ADMIN'])
@Secured(['permitAll'])
class loginLogoutController {

    def index()
    {

    }

    def loginBox()
    {
        println "params = $params"
    }
    def checkValidation()
    {

    }
}
