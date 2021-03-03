package com.link

class Subs {
    Date Created
    static belongsTo =[user: User, topic: Topic]
    enum Seriousness{
        PUBLIC,PRIVATE
    }
    Seriousness serious
    static constraints ={
        serious nullable : true
    }
}
