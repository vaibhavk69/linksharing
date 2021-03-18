package test11

import com.link.Subs
import com.link.Topic
import com.link.User
import grails.converters.JSON

class SubscriptionController {

    def index() {
        //render(view:)

    }
    def subs(){
        User user = User.findById(session.user.id)
        Subs subs =Subs.findByUser(user)

        render(model: [subs:subs] as JSON)
    }
}
