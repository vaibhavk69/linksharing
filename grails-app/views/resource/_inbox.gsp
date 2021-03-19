<div class="card-body" style="overflow-x: scroll; height: 1000px">
    <g:if test="${subsInbox}">
        <g:each in="${subsInbox}" var="sub">
            <g:each in="${sub.topic.resource}" var="subs">
            %{--            ${subs}--}%
               <div class="newClass">
                <div class="postImage">
                    <g:link controller="user" action="userProfile" params="${[userId: subs.createdBy.id]}">
                        <g:img dir="images/profilePic" class="pImage" file='${subs.createdBy.photo}' alt="Missing Image" />
                    </g:link>
                </div>
                <div class="postContent">
                    <p>
                        ${subs.createdBy.firstName} ${subs.createdBy.lastName}
                        <span style="color: gray;">
                            <g:link controller="user" action="userProfile" params="${[userId: subs.createdBy.id]}">
                                @${subs.createdBy.userName}
                            </g:link>
                            <span style="float: right;">
                                <g:link controller="topic" action="topicShow" params="${[topicName: subs.topic.topicName, topicId:subs.topic.id]}">
                                    <span style="font-weight: 800">${subs.topic.topicName}</span>
                                </g:link>
                            </span>
                        </span>

                        <br>
                        " ${subs.description} "
                        <br>
                        <span style="display: inline-flex">


                            <span style="float: inline-end;">
                                <g:if test="${subs.documentResource.filePath[0]}">
                                    <g:link url="${subs.documentResource.filePath[0]}" download="${subs.documentResource.filePath[0]}">Download</g:link>&nbsp;&nbsp;&nbsp;
                                </g:if>
                                <g:if test="${subs.linkResource.url[0]}">
                                    <a href="http://${subs.linkResource.url[0]}" target="_blank">View Full Site</a>&nbsp;&nbsp;&nbsp;
                                </g:if>
%{--                                resposne.set for download--}%
%{--                                <g:if test="${subs.DocumentResource.filePath[0]}">--}%
%{--                                <g:link><a href="#">Download</a>&nbsp;&nbsp;&nbsp;--}%
%{--                                </g:if>--}%
%{--                                <a href="${subs.linkResource.url}">View Full Site</a>&nbsp;&nbsp;&nbsp;--}%
%{--                                <a href="#" onclick="hideFunction(${})">Mark as Read</a>&nbsp;&nbsp;&nbsp;--}%
%{--                            <g:link controller="topic" action="postShow" params="${[postId: subs.id]}">View Post</g:link>--}%
                            </span>
                        </span>
                    </p>
                    <hr>
                </div>
               </div>
            </g:each>
        </g:each>
    </g:if>
    <g:else>
        <div style="text-align: center">Currently no posts on this topic. Be the first one ...</div>
    </g:else>
</div>
<script>
    function hideFunction(id){
        $.ajax({
            type:'post',
            url: ''
        data: {'topicID' : id},
            success:
            error:

        })
    }
</script>