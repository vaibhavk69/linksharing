package test11
import com.link.Topic
import com.link.User
import test11.UserController
class TopicController {
    TopicService topicService
    def index() {

    }
    def createTopic(Topic topic) {
        topic=new Topic(topicName:params.topicName)
        println(params)
        if (topic) {
            println("inside")
            User user = User.get(session.user.id)
            print(session.user.id)
            user.addToTopics(topic).save(flush: true, failOnError: true)
            topic.save(flush:true,failOnError: true)
            redirect(controller: 'user', action: 'dashboard')
        } else {
            redirect(controller: 'user', action: 'dashboard')

        }
    }
//        User user=get(session.user.id)
//        println(user)
//        print(params)
//        if (params) {
//            Topic topic = new Topic(params).save(flush: true, failOnError: true)
//            println(topic)
//            user.addToTopic(topic).save(flush: true, failOnError: true)
//            //topicService.entry(params,user.id)
//            render "Success"
//        }
//        else{
//            render("failed")
//        }


}
