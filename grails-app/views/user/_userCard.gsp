<div class="card-user p-3">
    <div class="d-flex align-items-center">
        <div class="image"><img
                src="https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=80"
                 width="155"></div>

        <div class="ml-3 w-100">
            <h4 class="mb-0 mt-0">${session.user.firstName} ${session.user.lastName}</h4> <span>@${session.user.userName}</span>

            <div class="p-2 mt-2 bg-primary d-flex pull-left rounded text-white stats">
                <div class="d-flex flex-column"><span class="articles">Subscriptions</span> <span class="number1"><ct:subscriptionCount userId="${session.user.id}"/></span>
                </div>

                <div class="d-flex flex-column ml-5"><span class="followers">Posts</span> <span
                        class="number2">980</span></div>
            </div>

        </div>
    </div>
</div>