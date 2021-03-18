package com.link

class User {
//    User(def a){
//        this.firstName = a.firstName
//        this.lastName= a.lastName
//        this.email=a.email
//        this.userName=a.userName
//        this.password=a.password
//        println("inside constructor")
//    }
    static mapping = {
        table 'UserInfo'
    }
    String firstName
    String lastName
    String email
    String password
    String userName
    String photo
    //Boolean admin
    //Boolean active
    Date dateCreated
    Date lastUpdated
    static hasMany =[subs:Subs,topics :Topic,resource:Resource,readitem :ReadingItem,rating:Rating]
    static constraints = {
        firstName nullable: false, maxSize: 255
        lastName nullable: false, maxSize: 255
        email email: true, blank: false
        password size: 8..16, blank: false, nullable:false
        userName nullable:false
        photo nullable: true
    }
    def getSubbedTopic(){
        List list= Subs.createCriteria().list{
            projections{
                property('topic')
            }
            eq{user.id}
        }
    }
}
