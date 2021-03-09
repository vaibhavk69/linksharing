package test11

import com.link.Subs
import com.link.User
class UserController {
    UserService userService
    def index() {
        def user = User.list()
        println("rendering.....")
        render (view :"forUser",model :[user :user])

    }
    def input(){
        def u =new User(params)
        u.save(flush:true)
        println("save success")
        //userService.saveInfo(params)
        redirect(action:"login")

    }
    def login() {
        print(params)
        User user = userService.login(params.email, params.password)
        print(user)
        if (user) {
            session.user = user
            render(view: "Dashboard")

        } else {
            render(view: 'forUser')

        }
        //        if( userService.login(params.email,params.password)){
//            print("-----------------------------------logged in------------------------------")
//            render "logged in"
//        }else{
//            print("failed")
//            render "logged out"
//        }
    }
    def logout(){

        session.invalidate()
        //userService.logout()
        render(view: 'forUser')
        }
    def profile(){
        redirect(view: 'EditProfile')
    }

    }

