package helloworld

import grails.testing.web.controllers.ControllerUnitTest
import spock.lang.Specification

class SimpleControllerSpec extends Specification implements ControllerUnitTest<SimpleController> {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        expect:"fix me"
            true == false
    }
}
