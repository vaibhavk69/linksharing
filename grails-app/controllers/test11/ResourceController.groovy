package test11

import com.link.DocumentResource
import com.link.LinkResource
import com.link.Resource
import com.link.Subs
import com.link.Topic
import com.link.User

class ResourceController {
    def resourceService
    def index() {}

    def saveDoc() {
//        println("heres the info")
//        println(params)
//        println("thats-it")
        if (params) {
            User user = User.get(session.user.id)
            Topic topic = Topic.findByTopicName(params.topicName)
            println(params.description)
            String a = "/assets/docs/${session.user.id}.pdf"
            def file = params.filePath.getBytes()
            FileOutputStream fos = new FileOutputStream("/home/vaibhavkaushik/Desktop/test11/grails-app/assets/docs/${session.user.id}.pdf")
            fos.write(file)
            fos.close()
            println("file added")
            try {
                Resource resource = new DocumentResource(filePath: a, description: params.description, createdBy: user, topic: topic).save(flush: true, failOnError: true)

                topic.addToResource(resource).save(flush: true, failOnError: true)
                user.addToResource(resource).save(flush: true, failOnError: true)
                resourceService.status(topic,resource)

            }
            catch(Exception e){
                flash.error = "process failed"
            }
            redirect(controller: 'user', action: 'dashboard')
        } else {

        }

    }

    def saveLink() {
        User user=User.get(session.user.id)
        println("below is params map------------")
        println(params)
        //.saveLink(params.url)
        Topic topic= Topic.findByTopicName(params.topicName)
        println(topic)
        try {
            Resource linkResource = new LinkResource(description: params.description,topic: topic,createdBy: user, url: params.url).save(flush: true, failOnError: true)
            //.saveLink(params.url)
            topic.addToResource(linkResource).save(flush: true, failOnError: true)

            user.addToResource(linkResource).save(flush: true, failOnError: true)
            resourceService.status(topic,linkResource)
        }
        catch(Exception e){
            flash.error = "invalid"
        }
        flash.success = " data saved"

        redirect(controller:'user',action:'dashboard')

//        println(params)
//        Topic topic = Topic.findByTopicName(params.topicName)
////        User user = User.get(session.user.id)
////        Map response = resourceService.createLinkResource(params.topic, user, params.description, params.url)
//        Map response=[success:true,message:"link resource created successfully"]
//
//
//            LinkResource resource = new LinkResource(topic: topic,createdBy: user,url: url).save(flush:true,failOnError:true)
//            //topic.addToResource(resource).save(flush:true,failOnError:true)
//            println("resource creation success")
////        }
////        catch(Exception e){
////            response.success= false
////            response.message = "topic creation failed"
////        }
//        if (response.success) {
//            flash.success = response.message
//        } else {
//            flash.error = response.message
//        }
//        redirect(controller: 'user', action: 'dashboard')
    }
//    def red(){
//        if(params.id){
//
//        }
//    }
    def viewPost() {
        println("-----------------------resource detail below---------------------")

        println(params.post)
        Resource resource= Resource.findById(params.post)
        println(resource)
        if(resource){
            render(view: 'viewPost',model: [resource: resource])
        } else {
            flash.error = "No resource to rate"
            redirect(controller: 'user',action: 'dashboard')

        }

    }

    def rating(Resource resource,int rating) {
        println(resource)
        println(rating)
        User user = User.find(session.user)
        Map response = resourceService.rateResource(resource,user,rating)
        if(response.success){
            flash.success = response.message
            redirect(action: 'viewPost')
        } else {
            flash.error = response.message
            redirect(action: 'viewPost')
        }
    }
}

