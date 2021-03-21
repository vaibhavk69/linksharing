package test11

import com.link.Rating
import com.link.ReadingItem
import com.link.Resource
import com.link.Subs
import com.link.Topic
import com.link.User

import grails.gorm.transactions.Transactional

@Transactional
class TopicService {

    def trendingTopic() {
        List<Topic> topic = Topic.list(sort: 'version', order: 'desc', offset: 0, max: 5)
        println(topic)
        topic
    }
    def delete(Topic topic){
        List<Resource> rs = Resource.findAllByTopic(topic)
        rs.each{
            List<Rating> rate = Rating.findAllByResource(it)
            rate.each{
                it.delete(flush:true)
            }
            it.delete(flush:true)
        }
        List<ReadingItem> rt = ReadingItem.getAll(topic.id)
        rt.each {
            it.delete(flush:true)
        }
        List<Subs> sub = Subs.findAllByTopic(topic)
        sub.each{
            it.delete(flush:true)
        }

        topic.delete(flush:true)
    }
    def subbedTopics(User user) {
        List<ReadingItem> read = ReadingItem.findAllByUser(user)
        if (read) {
            return read
        } else {
            return null
        }
    }

//    def entry(def a,long userId) {
//        print(a +" "+userId)
//        Topic topic=new Topic(a.name)   // visibility: a.visibility
//        topic.save(flush:true)
//        User user=User.get(userId)
//        Topic.addToUser(topic)
//        user.save(flush:true)
//        //return topic
}