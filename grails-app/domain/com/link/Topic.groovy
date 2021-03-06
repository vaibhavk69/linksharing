package com.link


class Topic {

    String name
    Date created
    Date updated
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
