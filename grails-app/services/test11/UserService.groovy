package test11

//import com.link.Subs
import com.link.User
//import grails.gorm.transactions.Transactional
//import grails.web.databinding.DataBinder


class UserService  {

    def serviceMethod() {
//        Subs subs=new Subs(serious: Subs.Seriousness.CASUAL).save()
//        user.addToSubs(subs)

    }
    def saveInfo(){
        def user = new User()

    }
    def login(String email,String password) {
        User user = User.findByEmailAndPassword(email, password)
        if (user) {
            return user
        } else {
            return null
        }
    }
//        def logout(){
//            session.invalidate()
//        }


    }
