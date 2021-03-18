package com.link

class DocumentResource {
    String filePath
    Resource resource
    static belongsTo = [resource:Resource]
    static constraints = {
        filePath nullable: true ,maxSize: 700
    }
}
