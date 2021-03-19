<%--
  Created by IntelliJ IDEA.
  User: vaibhavkaushik
  Date: 09/03/21
  Time: 3:55 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
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
    <link rel="stylesheet" href="dist/bs-pagination.min.css">
    <script src="//code.jquery.com/jquery.min.js"></script>
    <script src="dist/pagination.min.js"></script>
    <!--<link rel="stylesheet" href="dist/pagination.min.css">-->
%{--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">--}%
%{--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>--}%
    <g:external dir="stylesheets" file="dashboard.css"/>
</head>

<body>
<g:if test="${session.user==NULL}">
    <p>Not Found</p>
</g:if>
<g:else>
<nav class="navbar navbaar-inverse navbar-expand-sm bg-dark navbar-dark">
    <div class="container-fluid">
        <div class="navbar-nav" style=" width: 100%;">
            <span style="float: left">
                <a class="navbar-brand" style="float: left" href="#">Link-Sharing </a>
            </span>

            <span style="float: right; margin-left: 530px">
                <div class="navbar-form form-inline navbar-right">
                    <g:form>
                    <g:textField class="form-control mr-sm-2" id="search" type="text" placeholder="Search" name="searchBar"/>
                    <g:submitButton name="submit" class="btn btn-success my-2 my-sm-0" type="button" >Search</g:submitButton></g:form>
                    <i class="far fa-comment fa-2x" style="margin-left: 5px ;color: #b3d7ff;"  data-toggle="modal" data-target="#myModal1"></i>
                    <g:render template="/topic/createTopic"></g:render>
                    <i class="fas fa-link fa-2x" style="color: #b3d7ff;margin-left: 5px" data-toggle="modal" data-target="#myModal2"></i>
                    <g:render template="/resource/addDoc"></g:render>
                    <i class="far fa-sticky-note fa-2x" style="color: #b3d7ff;margin-left: 5px" data-toggle="modal" data-target="#myModal3"></i>
                    <g:render template="/resource/addLink"></g:render>
                    <i class="far fa-envelope fa-2x" style="color: #b3d7ff;margin-left: 5px" data-toggle="modal" data-target="myModal4"></i>
                    <div style="float: right; ">
                        <a class="dash_links nav-link dropdown-toggle" id="navbarDropdownMenuLink-4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-size: 20px">
                            <i class="dash_links fas fa-user fa-1x"></i>&nbsp;&nbsp;${session.user.firstName}</a>
                            <div class="dropdown-menu dropdown-menu-right dropdown-info" aria-labelledby="navbarDropdownMenuLink-4">
                                <g:link controller="User" action="profile" class="dropdown-item">Profile</g:link>
                                <g:link controller="User" action="logout" class="dropdown-item">Logout</g:link>
                            </div>
                    </div>
                </div>
            </span>
        </div>
    </div>
</nav>
<br>
    <g:if test="${flash.messageUserLoggedIn}">
        <div style="text-align: center"><span class="message" style="color: green">${flash.messageUserLoggedIn}</span></div>
    </g:if>
<div class="container " style="width: 500px; float: left">
%{--    col-sm-6--}%
    <div class="card " >

        <div class="card-body">

            <div style="float: left">
%{--                <img class="card-img-left" src="/home/vaibhavkaushik/Desktop/test11/grails-app/assets/images/profilePic/file1.jpeg"  alt="Card image">--}%
                <div class="postImage" style="width: 100px; height: 100px; margin-right: 10px; margin-top: 10px;">
                    <g:img class="pImage" dir="images" file="${session.user.photo}"  alt="Card image"/>
                </div>
            </div>
%{--                <g:img class="card-img-left" dir="images" file="${session.user.photo}"  alt="Card image"/></div>--}%
            <div>${session.user.firstName} ${session.user.lastName}
                <br>
                <br>
                <div>
                    <span>${session.user.email}
                    </span>
                    <br>
                    <br>
                    <span style="float: left;padding-left: 10px;">subscription
                        <br>
                        <ct:subscriptionCount userId="${session.user.id}"/>
                    </span>
                    <span style="float: left;padding-left: 10px;">Topics
                        <br>
                        <a href=""/><ct:topicCount userId="${session.user.id}"/>
                    </span>
                </div>
            </div>
        </div>

    </div>
    <br>
    <br>
    <g:render template="/subscription/subscriptions" />
    <br>
    <br>
    <g:render template="/topic/trendingTopics" />
%{--    <div class="card" >--}%
%{--        <div class="card-header">Subscription--}%
%{--        <span style="float: right;"><a href="1.html">view all</a></span></div>--}%
%{--        <div class="card-body"> content--}%
%{--        <g:form controller="topic" action="entry">--}%
%{--            <p>Name:</p>--}%
%{--        <g:textField name="userName" placeholder="Name" class="form-control mb-2"/>--}%
%{--            <g:select name="visibility" from="${visible}"/>--}%
%{--        </g:form>--}%
%{--            </div>--}%
%{--    </div>--}%
</div>
<div class="container" id="inbox" >
    <div class=" m-auto">
%{--      class:  col-lg-6--}%
        <div class="card bg-white ">



            <div class="card-header" >Inbox<span style="float: right;width: fit-content"><a href="1.html">view all</a></span></div>
        <g:render template="/resource/inbox"></g:render>
%{--        <div class="card-body" style="overflow-x: scroll; height: 1000px">--}%
%{--            <g:if test="${subsInbox}">--}%
%{--                <g:each in="${subsInbox}" var="sub">--}%
%{--                    <g:each in="${sub.topic.resource}" var="subs">--}%
%{--                    --}%%{--            ${subs}--}%
%{--                        <div class="postImage">--}%
%{--                            <g:link controller="user" action="userProfile" params="${[userId: subs.createdBy.id]}">--}%
%{--                                <g:img dir="images/profilePic" class="pImage" file='${subs.createdBy.photo}' alt="Missing Image" />--}%
%{--                            </g:link>--}%
%{--                        </div>--}%
%{--                        <div class="postContent">--}%
%{--                            <p>--}%
%{--                                ${subs.createdBy.firstName} ${subs.createdBy.lastName}--}%
%{--                                <span style="color: gray;">--}%
%{--                                    <g:link controller="user" action="userProfile" params="${[userId: subs.createdBy.id]}">--}%
%{--                                        @${subs.createdBy.userName}--}%
%{--                                    </g:link>--}%
%{--                                    <span style="float: right;">--}%
%{--                                        <g:link controller="topic" action="topicShow" params="${[topicName: subs.topic.topicName, topicId:subs.topic.id]}">--}%
%{--                                        <span style="font-weight: 800">${subs.topic.topicName}</span>--}%
%{--                                        </g:link>--}%
%{--                                    </span>--}%
%{--                                </span>--}%

%{--                                <br>--}%
%{--                                " ${subs.description} "--}%
%{--                                <br>--}%
%{--                                <span style="display: inline-flex">--}%


%{--                                    <span style="float: inline-end;">--}%
%{--                                        <a href="#">Download</a>&nbsp;&nbsp;&nbsp;--}%
%{--                                        <a href="${subs.linkResource.url}">View Full Site</a>&nbsp;&nbsp;&nbsp;--}%
%{--                                        <a href="#">Mark as Read</a>&nbsp;&nbsp;&nbsp;--}%
%{--                                    <g:link controller="topic" action="postShow" params="${[postId: subs.id]}">View Post</g:link>--}%
%{--                                    </span>--}%
%{--                                </span>--}%
%{--                            </p>--}%
%{--                            <hr>--}%
%{--                        </div>--}%
%{--                    </g:each>--}%
%{--                </g:each>--}%
%{--            </g:if>--}%
%{--            <g:else>--}%
%{--                <div style="text-align: center">Currently no posts on this topic. Be the first one ...</div>--}%
%{--            </g:else>--}%
%{--        </div>--}%
%{--            <div class="card-body">--}%
%{--                <div style="float: left"><img class="card-img-left" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw8QDhEREA0KDRAQDxAODRAQEA8JFRAKFhIXIhQRExMkHSgsGRslGxMTITEhMSkrLjouFx8/ODMtNygtLjcBCgoKBQwNFQ8FFSsZExkrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAIAAgAMBIgACEQEDEQH/xAAaAAEAAwEBAQAAAAAAAAAAAAAABAUGAwIH/8QAMBAAAgECAwYFAgcBAAAAAAAAAAECAxEEITEFQVFhcZESIqGxwXLwIzJCUoGC4WL/xAAUAQEAAAAAAAAAAAAAAAAAAAAA/8QAFBEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8A+4gAAAAAAAAi4nHU6eTd3wXmf88CDPbPCn3kBcAp4bZ40+0idhsdTqZKVnwflf8AHECUAAAAAAAAAAAAAFVtXHuL8EHZ/qlw5LmWVSXhi3wTfoZVybbb1bbfVgAAAAAFxsvHtvwTd3+iXHk+ZamSUmmmtU011RqqU/FFPik+6A9gAAAAAAAAADjilenP6JezMwjSY3ERpwvJN3ySW9szYAAAAAAZp8IrU4L/AIj7GYNJgsRGpC8U1bJp7mgJIAAAAAAAAAAqNvaU+su9ipNLjMMqkPC8t8XraRnsRQdOXhlZvJ5cGBzAAAAAC22DpU6x72ZW4eg6kvDGybu8+CNDg8MqcPCs3rJ6XkBIAAAAAAAAAAAp9u0s4z/q+u75Lg5V6SnFxej+00BlwHr0v7gAAFr1t6sC02FSzlPpFdd/wXJyoUlCKitF9ts6gAAAAAAAAADzKSSu2kuLyA9ArsRtWnHKN5vlku5V4jHVKmsrL9sfL3e8CPLV9X7gAAI6rqvcADWgzWGx1SnpLxL9svN2e4tMPtWnLKV4Pnmu4FiDzGSaumnzWZ6AAAAcK+JhBXlJLlq30RF2pjXTSjH80s762jx6lJJtu7bbe95gWVfa7eUI25yz7Ir6taU35pSl1+EeAAAAAAAAAAAAHujWlB+WUo9PlFjQ2w9Jxvzjl6FWANNh8TCorxkny0a6o7mTi2ndNpresi72XjXUTjL80c76Xjx6gV+15XrS5KK9CGSNoP8AGn9VvREcAAAAAAAAAAAAAAAAATNkStWjzUl6f4QyRs5/jQ+r4YH/2Q=="  alt="Card image"></div>--}%
%{--                <div   style="font-size: 30px;"><a href="1.html" id="results">Grails</a>--}%
%{--                    <br>--}%
%{--                    <div><span id="username" style="float: left">@uday--}%
%{--                    <br>--}%
%{--                        <span id="description">content</span>--}%
%{--                       <a href="1.html">subscription</a>--}%
%{--                    </span>--}%
%{--                        <span style="float: left;padding-left: 10px;">subscription--}%
%{--                            <br>--}%
%{--                            50--}%
%{--                        </span>--}%
%{--                        <span style="float: left;padding-left: 10px;">Posts--}%
%{--                            <br>--}%
%{--                            <a href="1.html">30</a>--}%
%{--                        </span>--}%
%{--                    </div>--}%
%{--                    <br>--}%
%{--                    <br>--}%
%{--                    <div><i class="fab fa-twitter"></i>--}%
%{--                    <i class="fab fa-facebook"></i>--}%
%{--                        <i class="fab fa-google"></i>--}%
%{--                    <span style="float: right"><a href="Dashboard.gsp" download="./home/vaibhavkaushik/Downloads/project.pdf">Download</a> </span></div>--}%
%{--                </div>--}%
%{--            </div>--}%
            </div>
        </div>
    </div>

%{--    <div id="results" style="font-size: 30px;color: red"></div>--}%
%{--    <script>--}%
%{--        $(document).ready(function(){--}%
%{--            $('#search').keyup(function (){--}%
%{--                var text = $(this).val() ;--}%
%{--                if(text != ''){--}%
%{--                    myfunction1(text);--}%
%{--                }--}%
%{--                else{--}%
%{--                    $('#results').html('');--}%
%{--                }--}%
%{--            });--}%
%{--        });--}%
%{--        function myfunction1(text){--}%
%{--            $.ajax({--}%
%{--                // type: 'post',--}%
%{--                // method: 'post',--}%
%{--                url: "http://localhost:8080/user/search",--}%
%{--                data: {search: $('#search').val()},--}%
%{--                dataType: "JSON",--}%
%{--                success: function (result){--}%
%{--                    // $('#searchOutput').text("result found");--}%
%{--                    //$('#results').text(result.topicName);--}%
%{--                    //alert(result.userName);--}%
%{--                    //$('#inbox').hide('slow');--}%
%{--                    //$('#inbox').show('fast')--}%
%{--                    $('#username').text(result.topicName);--}%
%{--                    //$('#description').text(result.topic)--}%
%{--                    // $('#inbox').hide('slow');--}%
%{--                }--}%
%{--            });--}%
%{--        };--}%
%{--    </script>--}%
<!--top share and post-->
</div>
</g:else>


</body>
</html>