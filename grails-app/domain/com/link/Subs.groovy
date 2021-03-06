package com.link

class Subs {
    Date dateCreated
    enum Seriousness{
        CASUAL,
        SERIOUS,
        VSERIOUS
    }
    Seriousness serious
    static belongsTo =[user: User, topic: Topic]
    static constraints ={
        serious nullable : true
    }
}
