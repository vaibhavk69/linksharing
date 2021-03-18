<html>
<head>
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/a390992c2b.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
<nav class="navbar navbaar-inverse navbar-expand-sm bg-dark navbar-dark">
    <div class="container-fluid">
        <div class="navbar-nav" style=" width: 100%;">
            <span style="float: left">
                <a class="navbar-brand" style="float: left" href="#">Link-Sharing </a>
            </span>

            <span style="float: right; margin-left: 600px">
                <form class="navbar-form form-inline navbar-right">
                    <input class="form-control mr-sm-2" type="text" placeholder="Search">
                    <button class="btn btn-success my-2 my-sm-0" type="button" >Search</button>

                    <div style="float: right; ">
                        <a class="dash_links nav-link dropdown-toggle" id="navbarDropdownMenuLink-4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-size: 20px">

                            <i class="dash_links fas fa-user fa-1x"></i>&nbsp;&nbsp;${session.user.firstName}</a>
                        <div class="dropdown-menu dropdown-menu-right dropdown-info" aria-labelledby="navbarDropdownMenuLink-4">
                            <g:link controller="User" action="dashboard" class="dropdown-item">Dashboard</g:link>
                            <g:link controller="User" action="logout" class="dropdown-item">Logout</g:link>
                        </div>

                    </div>

                </form>
            </span>

        </div>
    </div>

</nav>



<div>
<div style="float: left;width: 500px;margin-left: 30px">
    <div class="card" >
        <div class="card-header">Topic :${topic.topicName}
          <a href="#" ></a>    %{--  style="float: inline-end;"--}%
        </div>


        <div class="postImage">
%{--                <g:img dir="images/profilePic" class="pImage" file='${num.createdBy.photo}' alt="Missing Image" />--}%
        </div>
        <div class="postContent">
            <p>
%{--                    <span id="topicId" style="color: gray;">@${num.id}</span>--}%
                <br>
                <span style="float: left; margin-right: 70px;">
                    Subscriptions <br> 500
                </span>
                <span>Posts <br> 500
                </span>
            </p>
        </div>
        <p style=" margin-bottom: 0%;">              %{--       float: inline-end;--}%
            <span style="display:flex; justify-content: space-between">
                <select style="margin-left: 20px">
                    <option value = "serious" selected> serious</option>
                    <option value = "casual"> casual</option>
                    <option value = "veryserious"> Very serious</option>
                </select>
                <select style="margin-left: 20px">
                    <option value = "serious" selected> Public</option>
                    <option value = "casual"> Private</option>
                </select>
            &nbsp;</span>
                <i class="far fa-plus-square fa-2x" style="margin-left: 10px"></i>&nbsp;&nbsp;
                <i class="far fa-envelope fa-2x" style="margin-left: 10px"></i>&nbsp;&nbsp;
                <i id="deleteTopic" class="far fa-trash-alt fa-2x" style="margin-left: 10px" onclick="myfunction2(${topic.id})"></i>
%{--                    <g:link controller="topic" action="delete" params="num.id"><i class="far fa-trash-alt fa-2x" style="margin-left: 20px"></i></g:link>--}%

        </p><br>
    </div>

%{--    </g:each>--}%
<br>
<br>
    <!--                ----Users of this topic card----                    -->
    <div  style="width: 500px">
        <div class="card">
            <div class="card-header">Users : "<span style="">${topic.topicName}</span>"            %{-- font-weight: 700; font-size: 20px"--}%
                <a href="#" ></a>
            </div>
            <div class="card-body">
                <div class="postImage">
                    %{--                        <img class="pImage" src="missing-image.jpg" onerror="this.src='default-image.jpg';" alt="Missing Image" />--}%
                </div>
                <div class="postContent">
                    <p>
                        <a href="#" > NAME </a><br>
                        <span style="color: gray;">@Username</span>
                        <br>
                        <span style="float: left; margin-right: 50px;">
                            Subscriptions <br> 500
                        </span>
                        <span>
                            Topics <br> 500
                        </span>
                    </p>
                    <hr>
                </div>
            </div>
        </div>
    </div>
</div
    <!--                ----All posts of the current Topic card----                    -->
    <div class="container" style="width: 1500px;">
        <div class="card">
           <div class="card-header"><span >Posts : "${topic.topicName}"</span>            %{--   style="line-height: 30px; font-size: 20px; font-weight: 900;"--}%
                <a href="#">


                </a>
                <span class="input-group" >
                    <input type="text" class="form-control" placeholder="Search" name="search" style="float: left;">
                    <button class="btn btn-success" type="submit">Search</button>
                </span>
            </div>
%{--                        <div class="card-body">--}%
%{--                            <div class="postImage">--}%
%{--                                <img class="pImage" src="default.jpeg"  alt="Missing Image" />--}%
%{--                            </div>--}%
%{--                            <div class="postContent">--}%
%{--                                <p>--}%
%{--                                    Name <span style="color: gray;">@Username Time</span>--}%
%{--                                    <br>--}%
%{--                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Et, exercitationem. Error sit eveniet ut libero itaque praesentium recu--}%
%{--                                    <br>--}%
%{--                                    <i class="fab fa-facebook-square fa-2x" ></i>&nbsp;--}%
%{--                                    <i class="fab fa-twitter-square fa-2x"></i>&nbsp;--}%
%{--                                    <i class="fab fa-google-plus-g fa-2x"></i>&nbsp;--}%
%{--                                    <span style="float: inline-end;">--}%
%{--                                        <a href="#">Download</a>&nbsp;&nbsp;&nbsp;--}%
%{--                                        <a href="#">View Full Site</a>--}%
%{--                                        <a href="#">Mark as Read</a>--}%
%{--                                        <a href="#">View Post </a>--}%
%{--                                    </span>--}%
%{--                                </p>--}%
%{--                                <hr>--}%
%{--                            </div>--}%
%{--                        </div>--}%
            <g:render template="/topic/allPosts"/>
        </div>
    </div>
</div>
<script>
    function myfunction2(id){
        $.ajax({
            type: 'post',//$("#topicName").val() },
            url: "http://localhost:8080/topic/topicDelete",
            data: {"topicId" : id},
            success: function (){
                window.location="http://localhost:8080/user/dashboard";
            }
        });
    };
</script>
</body>
</html>