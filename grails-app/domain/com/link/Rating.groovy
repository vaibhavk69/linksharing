package com.link

class Rating {//////////////extends Resource
   // Boolean isDelete
    Integer score
    User user
    Resource resource
    static belongsTo =[user:User,resource:Resource]
    static constraints ={
        score nullable :true
    }
}
