package test11
import com.link.User
import com.link.Subs
class BootStrap {

    def init = {
        println("starting")
        new User(firstName:"Hello",lastName:"World",email:"hw@helloworld.com",password:"123456789").save(flush:true,failOnError:true)
        new User(firstName:"Mr",lastName:"Amish",email:"MA@helloworld.com",password:"123456789").save(flush:true,failOnError:true)
        new User(firstName:"Jayaram",lastName:"Kruthik",email:"JK@helloworld.com",password:"123456789").save(flush:true,failOnError:true)
        new User(firstName:"Mr",lastName:"Nishchay",email:"MN@helloworld.com",password:"123456789").save(flush:true,failOnError:true)
        new User(firstName:"Sunny",lastName:"Arora",email:"SA@helloworld.com",password:"123456789").save(flush:true,failOnError:true)
        println("data saved")
    }
    def destroy = {
    }
}
