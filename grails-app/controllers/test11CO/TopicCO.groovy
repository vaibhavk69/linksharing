package test11CO

import com.link.Resource
import com.link.Subs
import com.link.User

class TopicCO {
//    TopicCO(def a){
//        this.name=a.name
//    }
        User createdBy
        String topicName
        Date dateCreated
        Date lastUpdated
        static belongsTo =[createdBy: User]
        enum Visibility{
            PUBLIC,PRIVATE
            def convertValue(String val){
                if(val=='PUBLIC'){
                    return Visibility.PUBLIC
                }
                else{
                    return Visibility.PRIVATE
                }
            }
        }

        Visibility visibility

        static hasMany=[resource: Resource, sub: Subs]
        static constraints ={
            topicName nullable : true
            //visibility nullable: true

        }

    }


