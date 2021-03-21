<div class="card-subs ">
    <div class="card-header bg-transparent justify-content-between">Subscriptions
        <a class="float-right">View All</a></div>
    <g:if test="${subs}">
        <g:each in="${subs}" var="val">
            <div class="card-body card${val.id}">
                <div class="d-flex align-items-center">
                    <div class="image"><img
                            src="https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80"
                            class="rounded" width="130"></div>

                    <div class="ml-3 w-100">
                        <h4 class="  mb-0 mt-0">${val.topic.topicName}</h4> <span class="ml-3">@</span>

                        <div class="  p-2 mt-2  d-flex justify-content-left rounded  ">
                            <div class="mr-5 d-flex flex-column">
                                <g:link controller="subscription" action="unSub" params="${[id:val.id]}">unsubscribe</g:link></span>
                            </div>

                            <div class=" d-flex flex-column"><span class="followers">Followers</span> <span
                                    class="number2">980</span></div>

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
                                <i class="far fa-trash-alt fa-2x mt-4"></i>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </g:each>
    </g:if>
    <g:else>
        <div class="card-body">
            <span class="align-content-center">No Data Found</span>
        </div>
    </g:else>
</div>
