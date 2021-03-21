<div class="modal fade" id="myModal3">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Share link</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <g:form controller="resource" action="saveLink" method="POST" >

                    <label style="float: left">URL :</label><input type="text" name="url" />
                    <br>
                    <br>
                    <label style="float: left;margin-top: 5px">Description :</label><g:textArea style="margin-top: 5px" name="description" placeholder="enter..."/>
                    <br>
                    <br>
                    <label style="float: left">Topic :</label><g:select name="topicName" from="${com.link.Subs.findAllByUser(session.user).topic.topicName}" class="dropdown-toggle btn btn-default col-sm-8" value="${resource?.topicName}"></g:select>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <g:actionSubmit class="btn btn-primary" value="create" name="saveLink" controller="resource" action="saveLink"/>
                    </div>
                </g:form>
            </div>
        </div>
    </div>
</div>