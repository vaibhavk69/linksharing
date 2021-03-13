package test11
import com.link.Topic
import com.link.User

import grails.gorm.transactions.Transactional

@Transactional
class TopicService {


//    def entry(def a,long userId) {
//        print(a +" "+userId)
//        Topic topic=new Topic(a.name)   // visibility: a.visibility
//        topic.save(flush:true)
//        User user=User.get(userId)
//        Topic.addToUser(topic)
//        user.save(flush:true)
//        //return topic
//    }
}
