package test11

import com.link.Resource
import com.link.Subs
import com.link.Topic
import com.link.User
import grails.converters.JSON

class TopicController {
    TopicService topicService
    def index() {

    }
    def createTopic(Topic topic) {
        println("--------------------------------GETS CLASS")
        println(params.getClass())
        def b=Subs.Seriousness.VSERIOUS
        User user = User.get(session.user.id)
        def a=topic.visibility.convertValue(params.visibility)
        topic=new Topic(topicName:params.topicName,visibility: a,createdBy: user).save(flush:true,failOnError:true)
        //println(params.visibility)
        if (topic) {
            //println("inside")

            //print(session.user.id)
            Subs subs =new Subs(serious: b,topic: topic,user: user).save(flush:true,failOnError:true)
            user.addToTopics(topic).save(flush: true, failOnError: true)
            topic.save(flush:true,failOnError: true)
            user.addToSubs(subs)
            topic.addToSub(subs)
            redirect(controller: 'user', action: 'dashboard')
        } else {
            redirect(controller: 'user', action: 'dashboard')

        }
    }
    def delete(Topic topic) {   ///////////////           search box
        println("cant get in here")
        if (topic){
            println("params topic id "+params.topicId)
            def tp = Topic.get(params.topicId)
            tp.delete(flush: true)
        }
        def all_topics = Topic.list()
        render (model:[topicName:all_topics.topicName, topicId:all_topics.id] as JSON)
    }
//    def topicDelete(){ //////////////////// this deletes the topic from view topic page
//        Topic topic=Topic.get(params.topicId)
//        if (topic && session.user.id==topic.createdBy.id){
//            println("params topic id "+params.topicId)
//            def tp = topic
//            tp.delete(flush: true)
//        }
//    }
    def topicShow(){

        Topic topic = Topic.get(params.topicId)
        def resource=Resource.findAllByTopic(topic)
        println("resources below-----------------------------------")
        println(resource.description)
        render(view: 'topicShow',model:[topic:topic,resource:resource])
    }
    def search() {
        ///////////////////////////EXPERIMENT/////////////////////////
        if (params) {
            def t = Topic.createCriteria().list{
                ilike('topicName',"%${params.search}%")
            }
            def a= t.id.asList()

            render( view: 'search',model: [topic:t])

//
//            'ex' {
//                eq ('', '')
//            }

//            def r = Resource.createCriteria().list{
//                projections{
//                    property('description')
//                }
//                like('description',"%${params.search}%")
//            }
            println("new message below-------------------------------------")
            println(t.topicName)
            println(a)
            //render([ topicName: t, resourceDescription: r,userName:] as JSON)
        }
        render( view: 'search')

        //////////////////////////////////////////////////////////////
//        if(params) {
//            println("--------")                 //desc topic name
//            println(params)
//            println(params.search)
//            println("--------")
//            def resource = Resource.findAllBytopicLike("%${params.search}%")
//            if (resource) {
//                println("resource below")
//                println(resource.description)
//            }
////            if(Subs.findAllByTopicLike("%${params}"))
//            println(resource.topic.properties)
//            println(resource.createdBy.userName)
//            render([topicId: resource.topic.id, topicName: resource.topic.topicName, resourceDescription: resource.description,userName: resource.topic.createdBy.userName] as JSON)
//        }
//        def resource = Resource.list()
//        //render ([topicId:resource.topic.id, topicName:resource.topic.topicName, resourceDescription:resource.description] as JSON)
//
//        render(view: 'dashboard.css')
//
//    }
    }
    def maxRes(){
        def a = Resource.createCriteria().list{
            projecttions{
                distinct('topic')
            }
        order(count('topic'),"desc")
        }
        print a
    }
}
