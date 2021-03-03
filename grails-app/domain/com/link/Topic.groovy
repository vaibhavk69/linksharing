package com.link

import com.link.User

class Topic {

    String name
    Date Created
    Date Updated
    static belongsTo =[creator: User]
    enum Visibility{
    PUBLIC,PRIVATE
}
    Visibility visibility
    static hasMany=[resource:Resource, sub:Subs]
    static constraints ={
        name nullable : true
        visibility nullable: true

    }
}
