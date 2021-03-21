package com.link

class Subs {
 //   Boolean isDelete
    Date dateCreated
    User user
    Topic topic
    enum Seriousness{
        CASUAL,
        SERIOUS,
        VSERIOUS
        def convertValue(String val){
            if(val=='CASUAL'){
                return Seriousness.CASUAL
            }
            else if(val == 'SERIOUS'){
                return Seriousness.SERIOUS
            }
            else{
                return Seriousness.VSERIOUS
            }
        }
    }
    Seriousness serious
    static belongsTo =[user: User, topic: Topic]
    static constraints ={
        serious nullable : true
    }
}