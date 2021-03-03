package com.link

class User {
    String firstName
    String lastName
    String email
    String password
    String userName
    Byte Photo
    Boolean Admin
    Boolean Active
    Date Created
    Date Updated
    static hasMany =[subs:Subs,topic :Topic,resource:Resource,ritem :ReadingItem,rting:Rating]
    static constraints = {
        firstName nullable: true, maxSize: 255
        lastName nullable: true, maxSize: 255
        email email: true, blank: false
        password size: 8..16, blank: false, nullable:true
    }
}
