package com.link

class Resource {
    String description
    Date creation
    Date updated
    static belongsTo =[user:User, topic :Topic]
    static constraints ={
        description nullable : true
    }

}
