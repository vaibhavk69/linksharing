%{--<div class="modal fade" id="myModal1">--}%
%{--    <div class="modal-dialog modal-dialog-centered">--}%
%{--        <div class="modal-content">--}%
%{--            <div class="modal-header">--}%
%{--                <h4 class="modal-title">Create Topic</h4>--}%
%{--                <button type="button" class="close" data-dismiss="modal">&times;</button>--}%
%{--            </div>--}%
%{--            <div class="modal-body">--}%
%{--                <g:form controller="topic" action="createTopic" method="POST">--}%
%{--                    <input type="text" name="topicName" placeholder="enter...">--}%

%{--                    <g:select name="visibility" from="${com.link.Topic.Visibility.values()}"/>--}%
%{--                    <g:actionSubmit value="create" class="btn btn-success btn-block mt-3 pt-3" name="createTopic" action="createTopic" controller="topic" />--}%

%{--                </g:form>--}%
%{--            </div>--}%
%{--        </div>--}%
%{--    </div>--}%
%{--</div>--}%
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Create a new Topic</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <g:form controller="topic" action="createTopic" method="POST">
            <div class="modal-body ">

                    <input type="text" name="topicName" placeholder="enter...">
                    <br>
                    <g:select class="mt-3" name="visibility" from="${com.link.Topic.Visibility.values()}"/>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <g:actionSubmit class="btn btn-primary" value="create" name="createTopic" action="createTopic" controller="topic"/>
            </div>
                </g:form>
        </div>
    </div>
</div>