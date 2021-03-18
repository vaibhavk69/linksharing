package com.link

class Resource {
    String description
    Date dateCreated
    Date lastUpdated
    User createdBy
    Topic topic
    static mapping = {
        table 'ResourceInfo'
    }
    static hasMany = [linkResource:LinkResource,documentResource:DocumentResource]
    static belongsTo =[createdBy:User, topic :Topic]
    static constraints ={
        description nullable : true

    }

}
