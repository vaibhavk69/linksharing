
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">Link Sharing</a>

        <div class="pull-right">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="navbarDropdown" role="button"
                           data-bs-toggle="dropdown" aria-expanded="false">
                            ${session.user.userName}
                        </a>
                        <ul class="dropdown-menu dropdown-info" aria-labelledby="navbarDropdown">
                            <li> <g:link controller="User" action="profile" class="dropdown-item">Profile</g:link></li>
                            <li><g:link controller="User" action="logout" class="dropdown-item">Logout</g:link></li>
                        </ul>
                    </li>
                </ul>

                <form class="mt-1 d-flex">
                    <input class="mt-1 form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="mt-1 btn btn-outline-success" type="submit">Search</button>
                </form>
                <i class="far colr fa-comment fa-2x ml-2 " data-toggle="modal" data-target="#myModal1"></i>
                <g:render template="/topic/createTopic"></g:render>
                <i class="fas colr fa-link fa-2x ml-1" data-toggle="modal" data-target="#myModal2"></i>
                <g:render template="/resource/addDoc"></g:render>
                <i class="far colr fa-sticky-note fa-2x ml-1" data-toggle="modal" data-target="#myModal3"></i>
                <g:render template="/resource/addLink"></g:render>
            </div>
        </div>
    </div>
</nav>