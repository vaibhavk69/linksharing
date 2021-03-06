package helloworld

import grails.gorm.transactions.Transactional

@Transactional
class SimpleService {


    def someMethod(){
        println "Hello user"
    }

    def serviceMethod() {

        // List a=[1,2,3,4,5]
    }
}