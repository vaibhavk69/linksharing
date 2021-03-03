package com.link

class Rating {
    Integer score
    static belongsTo =[user:User,resource :Resource]
    static constraints ={
        score nullable :true
    }
}
