package test11

import com.link.Subs

import com.link.User

import javax.imageio.ImageIO
import javax.xml.bind.ValidationException
import java.awt.image.BufferedImage



class UserService  {
    def registration(def params){

            User usr = new User(firstName: params.firstName, lastName: params.lastName, email: params.email, password: params.password, userName: params.userName).save(flush: true, failOnError: true)

        println("before photo")
        ////////////////////////////////////////////NOT WORKING BEYOND THIS//////////////////////////////////////////
//        String fname="/home/vaibhavkaushik/Desktop/test11/grails-app/assets/images/profilePic/${params.userName}.jpeg";
//        println(params.photo)
//        ByteArrayInputStream bis = new ByteArrayInputStream(params.photo.getBytes());
//        BufferedImage bImage2 = ImageIO.read(bis);
//        ImageIO.write(bImage2, "jpeg", new File("/home/vaibhavkaushik/Desktop/test11/grails-app/assets/images/profilePic/${params.userName}.jpeg"));
//
//        usr.photo ="/home/vaibhavkaushik/Desktop/test11/grails-app/assets/images/profilePic/${params.userName}.jpeg";

//        def newFile = new File(fname)
//        (params.photo).transferTo(newFile)
        try {
            usr.save(flush: true, failOnError: true)
        }
        catch (ValidationException e){
////            String a="error: "
////            usr.errors.allErrors.each{
////                a= a+ it
//            flash.messageWrongEntry = "invalid credentials"
//
//            //return a
            return null
        }
        if (usr.validate()) {
            return usr
        } else {
            return null
        }
    }
    def update(def params,def sessionUser){
//        params.getFile("img")
        User user = User.findById(params.id)
//        println(user.id)
        if (user) {
            println(user.firstName)
            println(params.userName)
            //def image= new Image(params)
            try{
                user.userName = params.userName
                if(params.photo){
                    println(user.userName)
                    String fname="/home/vaibhavkaushik/Desktop/test11/grails-app/assets/images/profilePic/${params.userName}.jpeg";
                    ByteArrayInputStream bis = new ByteArrayInputStream(params.photo.getBytes());
                    BufferedImage bImage2 = ImageIO.read(bis);
                    ImageIO.write(bImage2, "jpeg", new File("/home/vaibhavkaushik/Desktop/test11/grails-app/assets/images/profilePic/${params.userName}.jpeg"));

                    user.photo ="/assets/images/profilePic/${params.userName}.jpeg";
                    sessionUser.photo ="/profilePic/${params.userName}.jpeg";
                }

                user.save(flush: true, failOnError: true)
                return "success"
            }
            catch(Exception e){
                return null
            }
        } else {
            return null
        }
        //   userService.update(params)
    }

    def serviceMethod() {
//        Subs subs=new Subs(serious: Subs.Seriousness.CASUAL).save()
//        user.addToSubs(subs)

    }
//    def update(){
//        User user =User.findByEmail(params.email)
//    }
    def login(String email,String password) {

        User user = User.findByEmailAndPassword(email, password)
        if (user) {
            user.photo ="/home/vaibhavkaushik/Desktop/test11/grails-app/assets/images/profilePic/${user.userName}.jpeg";
            return user
        } else {
            return null
        }


    }
    def deleteSub(User sessionUser, long subId){
        User user = User.findById(sessionUser.id)


//        if (user) {
        if(subId){
            def sb = Subs.get(subId)
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
        return subs
    }
    def updatepass(String password,String confirmPassword,User user) {
        if (password == confirmPassword) {
            user.password =password
            user.save(flush:true)

        } else {
            return null
        }

    }
}

