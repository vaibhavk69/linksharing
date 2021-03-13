package com.link


class Topic {
//    Topic(def a){
//        this.name=a.name
//    }
    User createdBy
    String topicName
    Date dateCreated
    Date lastUpdated
    static belongsTo =[createdBy: User]
//    enum Visibility{
//    PUBLIC,PRIVATE
//}
//    Visibility visibility
    static hasMany=[resource:Resource, sub:Subs]
    static constraints ={
        topicName nullable : true
        //visibility nullable: true

    }
}
