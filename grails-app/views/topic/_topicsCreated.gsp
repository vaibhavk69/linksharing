<div class="card-subs ">
    <div class="card-header bg-transparent justify-content-between">Trending Topics
        <a class="float-right">View All</a></div>
    <g:if test="${myTopics}">
        <g:each in="${myTopics}" var="num">
            <div class="card-body card${num.id}">
                <div class="d-flex align-items-center">
                    <div class="image"><img
                            src="https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80"
                            class="rounded" width="130"></div>

                    <div class="ml-3 w-100">
                        <h4 class="  mb-0 mt-0">${num.topicName}</h4> <span
                            class="ml-3">@${num.createdBy.userName}</span>

                        <div class="  p-2 mt-2  d-flex justify-content-between rounded  ">
                            <div class="mr-5 d-flex flex-column"><span class="articles">Articles</span> <span
                                    class="number1">38</span>
                            </div>

                        </div>

                        <div class="button mt-2 d-flex flex-row align-items-center justify-content-between">
                            <div class="btn-group">
                                <button class="btn mt-4 btn-secondary btn-sm dropdown-toggle " type="button"
                                        data-bs-toggle="dropdown" aria-expanded="false">
                                    button 1
                                </button>
                                <ul class="dropdown-menu">
                                    <li>one</li>
                                    <li>two</li>
                                </ul>
                            </div>

                            <div class="btn-group">
                                <button class="btn mt-4 btn-secondary btn-sm dropdown-toggle" type="button"
                                        data-bs-toggle="dropdown" aria-expanded="false">
                                    button 2
                                </button>
                                <ul class="dropdown-menu">
                                    ...
                                </ul>
                            </div>

                            <div>
                                <i class="far fa-edit fa-2x mt-4"></i>
                            </div>

                            <div>
                                <g:link controller="topic" action="topicDelete" params="${[topicId: num.id]}" class="far fa-trash-alt fa-2x mt-4"></g:link>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </g:each>
    </g:if>
    <g:else>
        <div class="card-body justify-content-center">
            <p>No Topics Created</p>
        </div>
    </g:else>
</div>
%{--<script>--}%

%{--    function helloWorld(id) {--}%
%{--        $.ajax({--}%
%{--            type: 'post',--}%
%{--            url: 'http://localhost:8084/topic/topicDelete',--}%
%{--            data: {"topicId": id},--}%
%{--            success: function () {--}%
%{--                $(".card" + id).hide('slow');--}%

%{--            },--}%
%{--            error: function () {--}%
%{--                alert("not working");--}%
%{--           }--}%
%{--        });--}%
%{--    };--}%

%{--</script>--}%