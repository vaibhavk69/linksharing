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
</head>

<body>
<nav class="navbar navbaar-inverse navbar-expand-sm bg-dark navbar-dark">
    <div class="container-fluid">
        <div class="navbar-nav" style=" width: 100%;">
            <span style="float: left">
                <a class="navbar-brand" style="float: left" href="#">Link-Sharing </a>
            </span>

            <span style="float: right; margin-left: 530px">
                <div class="navbar-form form-inline navbar-right">
                    <input class="form-control mr-sm-2" id="search" type="text" placeholder="Search">
                    <button class="btn btn-success my-2 my-sm-0" type="button" >Search</button>

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

<div class="container col-sm-6" style="width: 500px; float: left">

    <div class="card " >

        <div class="card-body">

            <div style="float: left">
                %{--                <img class="card-img-left" src="/home/vaibhavkaushik/Desktop/test11/grails-app/assets/images/profilePic/file1.jpeg"  alt="Card image">--}%
                <g:img class="card-img-left" dir="images" file="${session.user.photo}"  alt="Card image"/></div>
            <div>${session.user.firstName} ${session.user.lastName}
                <br>
                <br>
                <div><span>${session.user.email}</span>
                    <br>
                    <br>
                    <span style="float: left;padding-left: 10px;">subscription
                        <br>
                        50
                    </span>
                    <span style="float: left;padding-left: 10px;">Posts
                        <br>
                        <a href="1.html">30</a>
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

</div>

<div class="container" id="inbox">
    <div class=" m-auto">
        %{--      class:  col-lg-6--}%
        <div class="card bg-white ">
            <div class="card-header" >Inbox<span style="float: right;width: fit-content"><a href="1.html">view all</a></span></div>
        <g:each in="${topic}" var="t">
        <div class="card-body">
                <div style="float: left"><img class="card-img-left" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw8QDhEREA0KDRAQDxAODRAQEA8JFRAKFhIXIhQRExMkHSgsGRslGxMTITEhMSkrLjouFx8/ODMtNygtLjcBCgoKBQwNFQ8FFSsZExkrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAIAAgAMBIgACEQEDEQH/xAAaAAEAAwEBAQAAAAAAAAAAAAAABAUGAwIH/8QAMBAAAgECAwYFAgcBAAAAAAAAAAECAxEEITEFQVFhcZESIqGxwXLwIzJCUoGC4WL/xAAUAQEAAAAAAAAAAAAAAAAAAAAA/8QAFBEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8A+4gAAAAAAAAi4nHU6eTd3wXmf88CDPbPCn3kBcAp4bZ40+0idhsdTqZKVnwflf8AHECUAAAAAAAAAAAAAFVtXHuL8EHZ/qlw5LmWVSXhi3wTfoZVybbb1bbfVgAAAAAFxsvHtvwTd3+iXHk+ZamSUmmmtU011RqqU/FFPik+6A9gAAAAAAAAADjilenP6JezMwjSY3ERpwvJN3ySW9szYAAAAAAZp8IrU4L/AIj7GYNJgsRGpC8U1bJp7mgJIAAAAAAAAAAqNvaU+su9ipNLjMMqkPC8t8XraRnsRQdOXhlZvJ5cGBzAAAAAC22DpU6x72ZW4eg6kvDGybu8+CNDg8MqcPCs3rJ6XkBIAAAAAAAAAAAp9u0s4z/q+u75Lg5V6SnFxej+00BlwHr0v7gAAFr1t6sC02FSzlPpFdd/wXJyoUlCKitF9ts6gAAAAAAAAADzKSSu2kuLyA9ArsRtWnHKN5vlku5V4jHVKmsrL9sfL3e8CPLV9X7gAAI6rqvcADWgzWGx1SnpLxL9svN2e4tMPtWnLKV4Pnmu4FiDzGSaumnzWZ6AAAAcK+JhBXlJLlq30RF2pjXTSjH80s762jx6lJJtu7bbe95gWVfa7eUI25yz7Ir6taU35pSl1+EeAAAAAAAAAAAAHujWlB+WUo9PlFjQ2w9Jxvzjl6FWANNh8TCorxkny0a6o7mTi2ndNpresi72XjXUTjL80c76Xjx6gV+15XrS5KK9CGSNoP8AGn9VvREcAAAAAAAAAAAAAAAAATNkStWjzUl6f4QyRs5/jQ+r4YH/2Q=="  alt="Card image"></div>
                <div   style="font-size: 30px;"><a href="1.html" id="results">${t.topicName}</a>
                    <br>
                    <div>
                        <span id="username" style="float: left">${t.createdBy.userName}
                        <br>
                        <span id="description">content</span>
                        %{--                       <a href="1.html">subscription</a>--}%
                    </span>
                    <span style="float: left;padding-left: 10px;">subscription
                         <br>
                         50
                    </span>
                    <span style="float: left;padding-left: 10px;">Posts
                         <br>
                         <a href="1.html">30</a>
                    </span>
                    </div>
                    <br>
                    <br>
                    <div><i class="fab fa-twitter"></i>
                        <i class="fab fa-facebook"></i>
                        <i class="fab fa-google"></i>
                        <span style="float: right"><a href="Dashboard.gsp" download="./home/vaibhavkaushik/Downloads/project.pdf">Download</a> </span></div>
                </div>
            </div>
        </g:each>
        </div>
    </div>
</div>

</body>
</html>