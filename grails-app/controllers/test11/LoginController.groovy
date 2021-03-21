package test11

import com.link.User

class LoginController {

    def index() {
    }
    def auth(String email, String password) {
        User user = User.findByEmailAndPassword(email, password)
        if (user) {
            session.user = user
            redirect(controller: 'user', action: "dashboard" , params:[params: user])
        } else {
            flash.error = "invalid credentials"
            redirect(action: 'index')
        }
    }


}
