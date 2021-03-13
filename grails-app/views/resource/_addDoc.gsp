<div class="modal fade" id="myModal2">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Share Document</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <g:form controller="topic" action="createTopic" method="POST">
                    <label style="float: left">Document :</label><input type="file" id="photo" name="photo" accept="image/*" enctype="multipart/form-data">
                    <label style="float: left">Description :</label><g:textArea name="description" placeholder="enter..."/>
                %{--                                    <!--<g:select name="visibility" from="${com.link.Topic.Visibility.values()}"/>-->--}%
                    <g:actionSubmit value="create" class="btn btn-success btn-block mt-3 pt-3" name="createTopic" action="createTopic" controller="topic" />

                </g:form>
            </div>
        </div>
    </div>
</div>