package com.link

class Rating {
    Integer score
    User user
    Resource resource
    static belongsTo =[user:User,resource :Resource]
    static constraints ={
        score nullable :true
    }
}
