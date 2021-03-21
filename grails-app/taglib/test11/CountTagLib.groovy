package test11
import com.link.*


class CountTagLib {
    static defaultEncodeAs = [taglib:'html']
    //static encodeAsForTags = [tagName: [taglib:'html'], otherTagName: [taglib:'none']]
    static namespace = "ct"


    def topicCount = { attrs, body ->
        Long userId = attrs.userId
        if (userId) {
            out << Topic.countByCreatedBy(User.load(userId))
        }
    }
    def subscriptionCount = { attrs, body ->
        Long userId = attrs.userId
        Long topicId = attrs.topicId
        if (userId) {
            out << Subs.countByUser(User.load(userId))
        }
        if (topicId) {
            out << Subs.countByTopic(Topic.load(topicId))
        }
    }
    def resourceCount = { attrs, body -> ////////tag lib
        Long topicId = attrs.topicId
        if (topicId) {
            out << Resource.countByTopic(Topic.load(topicId))
        }
    }
    def subsTopic = { attrs, body ->
        User user = attrs.user
        if (user) {
            def subs = Subs.findAllByUser(user)
            out << subs
        }
    }
}
