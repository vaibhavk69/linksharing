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

    def index() {
        def user = User.list()
        println("rendering.....")
        render(view: "forUser", model: [user: user])

    }

    def register() {
        //println(params)//register
        def u = new User(firstName:params.firstName,lastName: params.lastName,email: params.email,password: params.password,userName: params.userName).save(flush:true,failOnError:true
        )
        u.save(flush:true,failOnError:true)
        println("before photo")
        userService.savePhoto(u.id,params)
        ////////////////////////////////////////////NOT WORKING BEYOND THIS//////////////////////////////////////////
//        String fname="/home/vaibhavkaushik/Desktop/test11/grails-app/assets/images/profilePic/${params.userName}.jpeg";
//        ByteArrayInputStream bis = new ByteArrayInputStream(params.photo.getBytes());
//        BufferedImage bImage2 = ImageIO.read(bis);
//        ImageIO.write(bImage2, "jpeg", new File("/home/vaibhavkaushik/Desktop/test11/grails-app/assets/images/profilePic/${params.userName}.jpeg"));
//
//        u.photo = "/home/vaibhavkaushik/Desktop/test11/grails-app/assets/images/profilePic/${params.userName}.jpeg";
//        def newFile = new File(fname)
//        (params.photo).transferTo(newFile)

        if (u.validate()) {
            println("save success")
        } else {
            println("not saved")
        }
        //userService.saveInfo(params)
        redirect(action: "login")

    }

    def update() {
//        params.getFile("img")
        User user = User.findById(params.id)
//        println(user.id)

        if (user) {
            println(user.firstName)
            println(params.userName)
             //def image= new Image(params)
            user.userName = params.userName
            println(user.userName)

            String fname="/home/vaibhavkaushik/Desktop/test11/grails-app/assets/images/profilePic/${params.userName}.jpeg";
            ByteArrayInputStream bis = new ByteArrayInputStream(params.photo.getBytes());
            BufferedImage bImage2 = ImageIO.read(bis);
            ImageIO.write(bImage2, "jpeg", new File("/home/vaibhavkaushik/Desktop/test11/grails-app/assets/images/profilePic/${params.userName}.jpeg"));

            user.photo ="/home/vaibhavkaushik/Desktop/test11/grails-app/assets/images/profilePic/${params.userName}.jpeg";
            session.user.photo ="profilePic/${params.userName}.jpeg";
            if (session.user.photo) {
                ///////////



                ////////////////
                flash.message = "success"
//                ByteArrayInputStream bis = new ByteArrayInputStream(user.photo);
//                BufferedImage bImage2 = ImageIO.read(bis);
//                ImageIO.write(bImage2, "jpeg", new File("/home/vaibhavkaushik/Desktop/test11/grails-app/assets/images/profilePic/file1.jpeg") );
                render(view: 'Dashboard')

            } else {
                flash.message = "failed"
                render(view: 'Dashboard')
            }
            //userService.photos(params.photo,session.user.id)


//            MultipartFile file=new File(params.photo)
//            user.photo = file.getBytes()
//            BufferedImage bImage = ImageIO.read(user.photo)
//            ByteArrayOutputStream bos = new ByteArrayOutputStream()
//            ImageIO.write(bImage,"jpg", bos )
//            byte [] newImage = bos.toByteArray()
//            user.photo = newImage        //multipart file
            user.save(flush: true, failOnError: true)


        }
        //   userService.update(params)
    }

    def login() {
        //print(params)
        User user = userService.login(params.email, params.password)
        //print(user)
        session.user = user
        if (user) {

//            ByteArrayInputStream bis = new ByteArrayInputStream(params.photo);
//            BufferedImage bImage2 = ImageIO.read(bis);
//            ImageIO.write(bImage2, "jpeg", new File("/home/vaibhavkaushik/Desktop/test11/grails-app/assets/images/profilePic/file1.jpeg") );
            println("inside if")
            redirect(action: "dashboard")

        }
        println("after if")
        /////////////////TRENDING TOPIC///////////////////////////////////////////
        def a = Resource.createCriteria().list {
            createAlias('createdBy', 'u')
            createAlias('topic', 't')
            projections {
                groupProperty('t.id')
                count('t.id', 'Count')
                property('t.topicName')
                property('t.visibility')
                property('u.userName')
            }
            order('Count', 'desc')

        }
        println("------------------------a below----------------------------------")
        println(a)
        def topic = []
        a.each{
            topic.add(
                    'postCount': it[0],
                    'topicName': it[1],
                    'visibility': it[2],
                    'createdBy': it[4]
            )
        }
        println(topic)
        //def topic= Topic.list(sort: 'dateCreated',order: 'desc',offset : 0 ,max: 5)
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
        render(view: 'adminsPage')
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
    def changePass(){
        User user = User.findByEmail(params.email)
        if(user){
            if(user.password==params.password){
                user.password = params.nPassword
                user.save(flush:true,failOnError:true)
                redirect(action: 'login')
            }
            else{
                flash.message = "wrong password"
                render(view: 'forUser')
            }
        }else{
            flash.message = "no user found"
            render(view: 'forUser')
        }
    }
    def dashboard() {
        /////////////////////////////////SUBSCRIPTION////////////////////////////////
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
//        }
        ////////////////////////TRENDING TOPICS///////////////////////////
        def a = Resource.createCriteria().list {
            projections {
                createAlias('createdBy', 'u')
                createAlias('topic', 't')
                count('t.id', 'Count')
                groupProperty('t.id')
                property('t.topicName')
                property('t.visibility')
                property('u.userName')
                property('u.photo')
            }
            order('Count', 'desc')

        }
        println("------------------------a below----------------------------------")
        println(a)
        def topic = []
        a.each{
            topic.add(
                    'postCount': it[0],
                    'id':it[1],
                    'topicName': it[2],
                    'visibility': it[3],
                    'createdBy': it[4],
                    'photo':it[5]
            )
        }
        println(topic)
        // def topic= Topic.list(sort: 'dateCreated',order: 'desc',offset : 0 ,max: 5)
        /////////////////////////////////////////////////////////////////////
        render(view: 'Dashboard', model: [ subs : subs , topic : topic]) //
//        else {
//            render(view: 'Dashboard')
//        }
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
//        render(view: 'dashboard')
//
//    }
    }
    def send() {
        sendMail {
            to "vaibhavk0069@gmail.com"
            subject "sunny"
            text "sunny"
        }

        flash.message = "Message sent at "+new Date()
        redirect action:"index"
    }
}

