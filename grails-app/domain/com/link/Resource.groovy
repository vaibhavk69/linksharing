package com.link

class Resource {
   // Boolean isDelete
    String description
    Date dateCreated
    Date lastUpdated
    User createdBy
    Topic topic
    static mapping = {
        table 'ResourceInfo'
    }
    static hasMany = [readingItem:ReadingItem,createdBy: User]
    static belongsTo = [topic: Topic]
    static constraints = {
        description nullable: true

    }

}
