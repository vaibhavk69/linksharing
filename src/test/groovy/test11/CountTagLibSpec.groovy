package test11

import grails.testing.web.taglib.TagLibUnitTest
import spock.lang.Specification

class CountTagLibSpec extends Specification implements TagLibUnitTest<CountTagLib> {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        expect:"fix me"
            true == false
    }
}
