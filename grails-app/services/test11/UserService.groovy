package test11

//import com.link.Subs
import com.link.User

import javax.imageio.ImageIO
import java.awt.image.BufferedImage

//import grails.gorm.transactions.Transactional
//import grails.web.databinding.DataBinder


class UserService  {

    def serviceMethod() {
//        Subs subs=new Subs(serious: Subs.Seriousness.CASUAL).save()
//        user.addToSubs(subs)

    }
    def saveInfo(){
        def user = new User()

    }
//    def update(){
//        User user =User.findByEmail(params.email)
//    }
    def login(String email,String password) {
        User user = User.findByEmailAndPassword(email, password)
        if (user) {
            return user
        } else {
            return null
        }
    }
    def savePhoto(long id, def params){
        println("inside savePhoto")
        User user=User.findById(id)
        println(user.id)
        String fname="/home/vaibhavkaushik/Desktop/test11/grails-app/assets/images/profilePic/${user.userName}.jpeg";
        ByteArrayInputStream bis = new ByteArrayInputStream(params.photo.getBytes());
        BufferedImage bImage2 = ImageIO.read(bis);
        ImageIO.write(bImage2, "jpeg", new File("/home/vaibhavkaushik/Desktop/test11/grails-app/assets/images/profilePic/${user.userName}.jpeg"));

        user.photo = fname
        user.save(flush:true,failOnError:true)
    }
//        def logout(){
//            session.invalidate()
//        }
//    def photos(def a,def b){
//        User user = User.findById(b)
//        if(user){
//            def saveIn = new File("/home/vaibhavkaushik/Desktop/test11/grails-app/assets/images/profilePic/file1.jpeg")
//            if(saveIn){
//                a.transferTo(saveIn)
//            }
//            else{
//                return null
//            }
//        }else {
//            return null
//        }
//        user.save(flush:true,failOnError:true)
////        String path=user.photo
////        if(user){
////            //user.photo = file.getBytes()
////            BufferedImage bImage = ImageIO.read(path)
////            ByteArrayOutputStream bos = new ByteArrayOutputStream()
////            ImageIO.write(bImage,"jpg", bos )
////            byte [] newImage = bos.toByteArray()
////            return newImage
////        }
////        else{
////            return null
////        }
//    }

    }
