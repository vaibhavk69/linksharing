package test11


import com.link.User
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
        println(params)//register
        def u = new User(params)            //validate this and try via service
        u.save(flush: true)
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
            // def image= new Image(params)
            user.userName = params.userName
            println(user.userName)

            String fname="/home/vaibhavkaushik/Desktop/test11/grails-app/assets/images/profilePic/${params.userName}.jpeg";
            ByteArrayInputStream bis = new ByteArrayInputStream(params.photo.getBytes());
            BufferedImage bImage2 = ImageIO.read(bis);
            ImageIO.write(bImage2, "jpeg", new File("/home/vaibhavkaushik/Desktop/test11/grails-app/assets/images/profilePic/${params.userName}.jpeg"));

            user.photo = "/home/vaibhavkaushik/Desktop/test11/grails-app/assets/images/profilePic/${params.userName}.jpeg";
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
        print(params)
        User user = userService.login(params.email, params.password)
        //print(user)
        session.user = user
        if (user) {

//            ByteArrayInputStream bis = new ByteArrayInputStream(user.photo);
//            BufferedImage bImage2 = ImageIO.read(bis);
//            ImageIO.write(bImage2, "jpeg", new File("/home/vaibhavkaushik/Desktop/test11/grails-app/assets/images/profilePic/file1.jpeg") );

            redirect(action: "dashboard")

        }
        render(view: 'forUser')


        //        if( userService.login(params.email,params.password)){
//            print("-----------------------------------logged in------------------------------")
//            render "logged in"
//        }else{
//            print("failed")
//            render "logged out"
//        }
    }

    def dashboard() {
        render(view: 'Dashboard')
    }

    def logout() {

        session.invalidate()
        //userService.logout()
        redirect(view: 'forUser')
    }


    def profile() {
        if (session.user) {
            render(view: 'EditProfile')
        } else
            render "Not found"
    }


}

