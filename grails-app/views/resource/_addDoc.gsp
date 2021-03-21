<div class="modal fade" id="myModal2">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Share link</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <g:form controller="resource" action="saveDoc" method="POST" enctype="multipart/form-data">
                    <div class="row ml-2">
                        <label style="float: left">File :</label><input type="file" id="one" name="filePath">
                    </div>
                        <div class="row ml-2">
                            <label style="float: left;margin-top: 5px">Description :</label><g:textArea style="margin-top: 5px" name="description" placeholder="enter..."/>
                        </div>

                    <div class="row ml-2">
                        <label style="float: left">Topic :</label><g:select name="topicName" from="${com.link.Subs.findAllByUser(session.user).topic.topicName}" class="dropdown-toggle btn btn-default col-sm-8" value="${resource?.topicName}"></g:select>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <g:actionSubmit class="btn btn-primary" value="create" name="saveDoc" controller="resource" action="saveDoc"/>
                    </div>

                </g:form>
            </div>
            <div>
            </div>
        </div>
    </div>
</div>
