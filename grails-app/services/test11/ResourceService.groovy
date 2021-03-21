package test11

import com.link.Rating
import com.link.ReadingItem
import com.link.Resource
import com.link.Subs
import com.link.Topic
import com.link.User
import grails.gorm.transactions.Transactional


@Transactional
class ResourceService {

    def serviceMethod() {

    }
//    Map createLinkResource(Topic topic, User user, String description, String url){
//        Map response=[success:true,message:"link resource created successfully"]
//        try{
//
//            Resource resource = new LinkResource(description: description,topic: topic,createdBy: user,url: url).save(flush:true,failOnError:true)
//            topic.addToResource(resource).save(flush:true,failOnError:true)
//            println("resource creation success")
//        }
//        catch(Exception e){
//            response.success= false
//            response.message = "topic creation failed"
//        }
//        response
//    }
    Map rateResource(Resource resource, User user, int rating) {

        Map response = [success: true, message: "link resource created successfully"]
        try {
            Rating rting = new Rating(score: rating, resource: resource, user: user,isDelete: false).save(flush: true, failOnError: true)
            user.addToRating(rting).save(flush: true, failOnError: true)

        }
        catch (Exception e) {
            response.success = false
            response.message = "rating not added"
        }
        response
    }

    def status(Topic topic, Resource resource) {
        def s = Subs.createCriteria().list {
            projections {
                createAlias('user', 'u')
                property('u.id')
            }
            eq('topic.id', topic.id)
        }

        s.each {
            User user = User.findById(it)
            ReadingItem read = new ReadingItem(isRead: false, user: it, resource: resource).save(flush: true, failOnError: true)
            user.addToReaditem(read).save(flush: true, failOnError: true)
            resource.addToReadingItem(read).save(flush: true, failOnError: true)
        }
    }
}
