package test11

import com.link.DocumentResource
import com.link.LinkResource
import com.link.Resource
import com.link.Topic
import com.link.User
class ResourceController {

    def index() { }
    def saveDoc(){
//        println("heres the info")
//        println(params)
//        println("thats-it")
        if(params) {
            User user = User.get(session.user.id)
            Topic topic = Topic.findByTopicName(params.topicName)
            println(params.description)
            String a = "/assets/docs/${session.user.id}.pdf"
            def file=params.filePath.getBytes()
            FileOutputStream fos = new FileOutputStream("/home/vaibhavkaushik/Desktop/test11/grails-app/assets/docs/${session.user.id}.pdf")
            fos.write(file)
            fos.close()
            println("file added")
            Resource resource = new Resource(description: params.description, createdBy: user, topic: topic).save(flush: true, failOnError: true)
            DocumentResource documentResource = new DocumentResource(resource: resource, filePath: a).save(flush: true, failOnError: true)
            resource.addToDocumentResource(documentResource)
            topic.addToResource(resource).save(flush: true, failOnError: true)
            user.addToResource(resource).save(flush: true, failOnError: true)
            redirect(controller: 'user',action: 'dashboard')
        }else{

        }

    }
    def saveLink(){
        User user=User.get(session.user.id)
        println("below is params map------------")
        println(params)
          //.saveLink(params.url)
        Topic topic= Topic.findByTopicName(params.topicName)

        Resource resource = new Resource(description: params.description,topic: topic,createdBy: user).save(flush:true,failOnError:true)
        LinkResource linkResource = new LinkResource(url:params.url,resource: resource).save(flush:true,failOnError:true)
//        LinkResource linkResource = new LinkResource(url:params.url).save(flush:true,failOnError:true)  //.saveLink(params.url)
        resource.addToLinkResource(linkResource).save(flush:true,failOnError:true)

        topic.addToResource(resource).save(flush:true,failOnError:true)
        user.addToResource(resource).save(flush:true,failOnError:true)
        redirect(controller:'user',action:'dashboard')
    }
    def red(){
        if(params.id){

        }
    }

    }

