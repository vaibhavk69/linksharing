package com.link

import com.sun.org.apache.xpath.internal.operations.Bool


class Topic {
//    Topic(def a){
//        this.name=a.name
//    }
    //Boolean isDelete
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

    static hasMany=[resource:Resource, sub:Subs]
    static constraints ={
        topicName nullable : true,unique: true
        //visibility nullable: true

    }
//    def deleteTopic(Topic topic){
//        Resource res = Resource.findAllByTopic(topic)
//        res.each{
//            it.isDelete = true
//        }
//        topic.delete(flush:true)
//    }

}
