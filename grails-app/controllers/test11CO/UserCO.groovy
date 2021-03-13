package test11CO
import com.link.User
class UserCO {
    long id
    String lastName
    String firstName
    String userName
    String password
    def photo
    static constraints = {
        id( blank: false)
        firstName(nullable: false, blank: false)
        lastName(nullable: false, blank: false)
        userName(nullable: true, blank: true)
        photo(nullable: true, size:1024*1024*2)
    }
    User getUser() {
        return User.get(this.id)
    }
}
