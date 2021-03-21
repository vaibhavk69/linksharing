package com.link

class ReadingItem {
  //  Boolean isDelete
    Boolean isRead
    static belongsTo =[user :User,resource :Resource]
    static constraints ={
        isRead nullable: true
    }
}
