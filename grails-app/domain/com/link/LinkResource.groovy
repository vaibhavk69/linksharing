package com.link

class LinkResource {
    String url
    Resource resource
    static belongsTo = [resource:Resource]
    static constraints = {
        url nullable: true
    }
}
