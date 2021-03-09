package helloworld

import org.springframework.beans.factory.annotation.Autowire

class SimpleController {

    SimpleService simpleService

    def index() {
        simpleService.serviceMethod() {
        }
    }
}