package test11

import com.link.Subs
import com.link.User
class UserController {

    def index() {
        def user = User.list()
        render (view :"forUser",model :[user :user])
//        Subs subs=new Subs(serious: Subs.Seriousness.CASUAL).save()
//        user.addToSubs(subs)
    }
    def input(){
        def user = new User(params)
        user.save()
        redirect(action:"index")
    }
}
