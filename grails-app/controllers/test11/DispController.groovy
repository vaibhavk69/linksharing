package test11

class DispController {

    def index() {
        List a= new ArrayList()
        a.add((1..100).each{if(it.toBigInteger().mod( 2 ) == 0){return it}})
        render (view:"temp" ,model :[a:a])
    }
}
