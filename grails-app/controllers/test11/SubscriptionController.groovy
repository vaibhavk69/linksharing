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
    def subscribeTheTopics(Topic topic) {
        if (topic){
            println("----------------------------")
            println("in subscription")
            println(params)
            println("params topic id "+params.topicId)
            println("----------------------------")
            Topic tp = Topic.get(params.topicId)
            User user = User.get(session.user.id)
            Subs subs = new Subs(user: user, topic: tp, seriousness: Subs.Seriousness.SERIOUS).save(flush: true, failOnError: true)
            user.addToSubs(subs).save(flush: true, failOnError: true)
            tp.addToSub(subs).save(flush: true, failOnError: true)
        }
        def all_topics = Topic.list()
        render (model:[topicName:all_topics.topicName, topicId:all_topics.id] as JSON)
    }
}
