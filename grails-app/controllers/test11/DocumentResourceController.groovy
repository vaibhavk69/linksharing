package test11

import com.link.DocumentResource
import com.link.Resource
import com.link.Topic
import com.link.User

class DocumentResourceController {

    def index() {}
//    def saveDoc(){
//        println("inside this")
//        User user=User.findById(session.user.id)
//        //Topic topic =Topic.findByCreatedBy(user.id)
//        String a = "/home/vaibhavkaushik/Desktop/test11/grails-app/assets/docs/${session.user.id}.pdf"
//        println(a)
    //documentResource.filePath = a
//        Resource resource=new Resource(description: params.description,createdBy: session.user,topic:topic ).save(flush:true,failOnError:true)
//        DocumentResource documentResource = new DocumentResource(resource: resource,filePath: a).save(flush:true,failOnError:true)
//        resource.addToDocumentResource(documentResource)
//        topic.addToResource(resource)
//        topic.addToResource(resource).save(flush:true,failOnError:true)
//        println(documentResource.filePath)
//        documentResource.save(flush:true,failOnError:true)
//        def file=params.filePath.getBytes()
//        MultipartFile multipart,
//        Path dir
//        throws IOException {
//            Path filepath = Paths.get(dir.toString(), multipart.getOriginalFilename());
//            multipart.transferTo(filepath);
//        String newUrl = "/home/vaibhavkaushik/Desktop/test11/grails-app/assets/docs/${session.user.id}.pdf"
//        file.transferTo(newUrl)
//        FileOutputStream fos = new FileOutputStream("/home/vaibhavkaushik/Desktop/test11/grails-app/assets/docs/${session.user.id}.pdf")
//        fos.write(file)
//        fos.close()
//        println("file added")

//        FileInputStream fis = new FileInputStream(params.filePath.getBytes())
//        byte [] data = new byte[(int)file.length()];
//        fis.read(data);
    //Resource resource = new Resource()
    //BufferedImage bImage2 = ImageIO.read(bis);
    //.write(bImage2, "pdf", new File("/home/vaibhavkaushik/Desktop/test11/grails-app/assets/docs/${session.user.id}.pdf"))
    //LinkResource linkResource = new LinkResource(url:newUrl )
    //redirect(controller:'resource',action:'saveDoc',params:[params:params])

//}
}
