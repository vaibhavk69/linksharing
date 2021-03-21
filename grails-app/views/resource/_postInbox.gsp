<div class="card-subs ">
    <div class="card-header bg-transparent justify-content-between">Inbox
    </div>
    <g:if test="${subTopic}">
        <g:each in="${subTopic}" var="val">
    <div class="card-body ">
        <div class="d-flex align-items-center">
            <div class="image"><img
                    src="https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80"
                    class="rounded" width="110"></div>

            <div class="ml-3 w-100">
                <h4 class="  mb-0 mt-0">${val.resource.topic.topicName}</h4> <span>Senior Journalist</span>

                <p>"""${val.resource.description}"""   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                Ut</p>

                <div class="button d-flex flex-row align-items-center pull-left">
                    <div class="btn-group">
                        <a href="/">Download</a>
                    </div>

                    <div class="ml-2 btn-group">
                        <a href="/">view fullsite</a>
                    </div>

                    <div class="ml-2 btn-group">
                        <a href="/">mark as read</a>
                    </div>

                    <div class="ml-2 btn-group">
                        <g:link  controller="resource" action="viewPost" params="${[post: val.resource.id]}">view post</g:link>
                    </div>

                </div>
            </div>
        </div>
    </div>
        </g:each>
    </g:if>
    <g:else>
        <div class="card-body justify-content-center">
            <p>No Unread Topics</p>
        </div>
    </g:else>
</div>