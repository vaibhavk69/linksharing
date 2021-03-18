package test11
import com.link.LinkResource
import org.springframework.web.multipart.MultipartFile
import java.io.File;
import java.io.FileInputStream;
import java.io.ByteArrayOutputStream;
import java.awt.image.BufferedImage
import java.nio.file.Path


class LinkResourceController {

    def index() { }
    def saveLink(def params){
//            LinkResource linkResource=new LinkResource(url:params).save(flush:true,failOnError:true)
//            return linkResource
//        //LinkResource linkResource = new LinkResource(url: params.url).save(flush:true,failOnError:true)
//        redirect(controller:'resource',action:'saveLink',params:[params:params])
    }

}
