package test11

import com.link.Subs
import com.link.Topic
import com.link.Resource
import com.link.User
import grails.converters.JSON
import test11CO.TopicCO
import test11CO.UserCO
import javax.imageio.ImageIO
import java.awt.Image
import java.awt.image.BufferedImage


class UserController {
    UserService userService
    def groovyPageRenderer
    def mailService
    def index() {
        def user = User.list()
        println("rendering.....")
        render(view: "forUser", model: [user: user])

    }

    def register() {
        def ans = userService.registration(params)
        redirect(action: "login")

    }

    def update() {
        userService.update(params,session.user)

        render(view: 'EditProfile')
    }

    def login() {
        User user = userService.login(params.email, params.password)
        session.user = user
        if (user) {
            println("inside if")
            flash.messageUserLoggedIn = "user logged in as ${user.userName}"
            redirect(action: "dashboard")
        }else{
            flash.messageCredentialsError = ""
        }
        println("after if")

        def topic= Topic.list(sort: 'dateCreated',order: 'desc',offset : 0 ,max: 5)
        ////////////////RECENT SHARES/////////////////////////////////////////////
        def resource = Resource.list(max: 5, sort: "dateCreated", order: "desc")
        render(view: 'forUser',model:[resource:resource,topic: topic]) //


        //        if( userService.login(params.email,params.password)){
//            print("-----------------------------------logged in------------------------------")
//            render "logged in"
//        }else{
//            print("failed")
//            render "logged out"
//        }
    }
    def admin(){
        def user = User.list()
        println(user)
        render(view: 'adminsPage', model: [user:user])
    }
    def recentShares(){
        def resource = Resource.list(max: 2, sort: "dateCreated", order: "desc")
//        return resource
//        println("below are resources-----------------------")
//        println(resource)
//        render(view: '_recentShares',model: [resource:resource])
    }
    def dispOne(){
        render(view: 'changePass')
    }
    def forgetPassword() {
        User user = User.findByUserNameOrEmail(params.userName, params.email)
        if (user) {
            String uniqueToken = UUID.randomUUID()
            user.verificationToken = uniqueToken
            user.save(flush:true)
            String url = "http://localhost:8091/login/validateLink?token=" +uniqueToken
            Map mailMap = [:]
            mailMap.userName = user.userName
            mailMap.forgetPasswordUrl = url
            mailService.sendMail
                    {
                        to params.email
                        subject 'Update your password'
//
                        html groovyPageRenderer.render(template:"/template/forgotpassmail", model:mailMap)
                    }
        } else {
            flash.notexist = "User does not exist"
        }
    }

    def validateLink(String token) {
        def user = User.findByVerificationToken(token)
        if (user) {
            user.verificationToken = null
            render(view: '/template/_forgotpassupdate', model:[user: user])
        } else {
            Print("link expired")
        }
    }

//    def changePass(){
//        User user = User.findByEmail(params.email)
//        if(user){
//            if(user.password==params.password){
//                user.password = params.nPassword
//                user.save(flush:true,failOnError:true)
//                redirect(action: 'login')
//            }
//            else{
//                flash.message = "wrong password"
//                render(view: 'forUser')
//            }
//        }else{
//            flash.message = "no user found"
//            render(view: 'forUser')
//        }
//    }
    def dashboard() {
        /////////////////////////////////SUBSCRIPTION////////////////////////////////

      //  Subs sub=userService.deleteSub(session.user,params.subId)
        User user = User.findById(session.user.id)


//        if (user) {
            if(params.subId){
                def sb = Subs.get(params.subId)
                sb.delete(flush:true)
            }
            println("hereeeeeeeeeeeeeeeeeeeeeeeeeeee")
            def subs = Subs.findAllByUser(user)
            println(Subs.findAllByUser(user))
            println("hereeeeeeeeeeeeeeeeeeeeeeeeeeee")
            if (subs) {
                println(subs.topic.topicName)
                println(subs.getClass())
               // render(view: '/user/Dashboard', model: [subs: subs])
            }

        ////////////////////////TRENDING TOPICS///////////////////////////
//        if(Resource.list()){                  ///////////database migration plugin
//        def a = Resource.createCriteria().list {
//            projections {
//                createAlias('createdBy', 'u')
//                createAlias('topic', 't')
//                count('t.id', 'Count')
//                groupProperty('t.id')
//                property('t.topicName')
//                property('t.visibility')
//                property('u.userName')
//                property('u.photo')
//            }
//            order('Count', 'desc')
//
//        }
//        println("------------------------a below----------------------------------")
//        println(a)
//
//        a.each{
//            topic.add(
//                    'postCount': it[0],
//                    'id':it[1],
//                    'topicName': it[2],
//                    'visibility': it[3],
//                    'createdBy': it[4],
//                    'photo':it[5]
//            )

//        println(topic)
    def subsInbox = Subs.findAllByUser(session.user).reverse()
//    def topic = Topic.createCriteria().list{
//        eq('visibility',Topic.Visibility.PUBLIC)
//    }
         def topics= Topic.list(sort: 'dateCreated',order: 'desc',offset : 0 ,max: 5)
        /////////////////////////////////////////////////////////////////////
//        render(view: 'Dashboard', model: [ subs : subs , topic : topic, subsInbox : subsInbox])
         //
        render(view: 'Dashboard', model: [ subs : subs , topic : topics, subsInbox : subsInbox ])  ///////////

    }

    def logout() {

        session.invalidate()
        //userService.logout()
        redirect(view: 'forUser')
    }


    def profile() {
        def myTopics = Topic.findAllByCreatedBy(session.user)
        if (session.user) {
            render(view: 'EditProfile',model: [myTopics:myTopics])
        } else
            render "Not found"
    }
    def search() {
        ///////////////////////////EXPERIMENT/////////////////////////
        if (params) {
            def t = Topic.createCriteria().list{
                ilike('topicName',"%${params.search}%")
            }
            def a= t.id.asList()

        render([topicName:t.topicName,topicId:a] as JSON)
//
//            'ex' {
//                eq ('', '')
//            }

//            def r = Resource.createCriteria().list{
//                projections{
//                    property('description')
//                }
//                like('description',"%${params.search}%")
//            }
            println("new message below-------------------------------------")
            println(t.topicName)
            println(a)
            //render([ topicName: t, resourceDescription: r,userName:] as JSON)
        }

        //////////////////////////////////////////////////////////////
//        if(params) {
//            println("--------")                 //desc topic name
//            println(params)
//            println(params.search)
//            println("--------")
//            def resource = Resource.findAllBytopicLike("%${params.search}%")
//            if (resource) {
//                println("resource below")
//                println(resource.description)
//            }
////            if(Subs.findAllByTopicLike("%${params}"))
//            println(resource.topic.properties)
//            println(resource.createdBy.userName)
//            render([topicId: resource.topic.id, topicName: resource.topic.topicName, resourceDescription: resource.description,userName: resource.topic.createdBy.userName] as JSON)
//        }
//        def resource = Resource.list()
//        //render ([topicId:resource.topic.id, topicName:resource.topic.topicName, resourceDescription:resource.description] as JSON)
//
//        render(view: 'dashboard.css')
//
//    }
    }
//    def send() {
//        sendMail {
//            to "vaibhavk0069@gmail.com"
//            subject "sunny"
//            text "sunny"
//        }
//
//        flash.message = "Message sent at "+new Date()
//        redirect action:"index"
//    }
//    def changePass()
//    {
//        userService.updatepass(params)
//        println("\n\nvalues updated\n\n")
//        flash.messagepassupdated = "Updated successfully. Please Login again."
//        redirect(controller: 'user' , action:'index')
//    }
    def send(num, email) {
        sendMail {
            to "${email}"
            subject "hello"
            text "${num}"
        }
        flash.message = "Message sent at "+new Date()
        //redirect action:"index"
        return num
    }

    def forgotPassword(){
        println(params.email)
        def user = User.findByEmail(params.email)
        println user
        if(user){
            def num = Math.abs( new Random().nextInt() % (9999 - 1000) ) + 1000
            def a = send(num, params.email)
            println num
            user.otp = num
            println("saving user otp:"+user.otp)
            user.save(flush:true)
            render(view: 'forgotPassword', model: [user:user])
        }
        else{
            flash.messageUserNotFound = "${params.email} not found"
        }
    }
    def otpVerify(){
        println(params.email)
        def user = User.findByEmail(params.email)
        println ("otp " + params.otp)
        println("num " + user.otp)
        if(user.otp == params.otp){
            println("otp verified")
            if (params.password == params.confirmPassword){
                user.password = params.password
                user.save(flush:true)
                flash.messagePasswordChanged = "Password Change Successful"
            }else{
                flash.messagePasswordNotChanged = "Password not Changed"
                redirect(action: 'signup')
            }
            redirect(action: 'signup')
        }else{
            redirect(action: 'signup')
        }
        //render ("ok")
    }
    def updatePasswords
}

