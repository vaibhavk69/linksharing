package test11

import com.link.User
import grails.converters.JSON

class TestController {

    def index() {
         }
    def data(User user,long userId){
        User.get(userId)
        println(params)
        if(user){
            render([firstName:user.firstName,lastName:user.lastName] as JSON)
        }else{
            render (status:500)
        }
//        println(user)
//        println(params)
//        //User user= User.first()
//        render (status:500,[firstName:user.firstName,lastName:user.lastName] as JSON)
    }
}
