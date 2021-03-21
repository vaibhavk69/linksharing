<%--
  Created by IntelliJ IDEA.
  User: vaibhavkaushik
  Date: 09/03/21
  Time: 5:03 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"></script>
    <script src="https://kit.fontawesome.com/a390992c2b.js" crossorigin="anonymous"></script>
    <asset:stylesheet src="style.css"/>
    <script>
        var deleteTopicUrl = "${createLink(controller: 'topic', action: 'delete')}";

    </script>
</head>

<body>

<g:if test="${flash.success}">
    <div class="alert alert-success" role="alert">
        ${flash.success}
    </div>
</g:if>
%{--layouts--}%
<g:if test="${flash.error}">
    <div class="alert alert-danger" role="alert">
        ${flash.error}
    </div>
</g:if>

<g:render template="newNavBar"/>

<div class="container">

    <div class="row">

        <div class="col-5">

            <div class="card-custom">
                <g:render template="/user/userCard"/>
            </div>

            <div class="card-custom">
                <g:render template="/topic/topicsCreated"/>
            </div>

        </div>

        <div class="col-7">

            <div class="card-custom">
                <g:render template="/login/updateUser"/>
            </div>

            <div class="card-custom">
                <g:render template="/login/confPassword"/>
            </div>

        </div>

    </div>

</div>





%{--<div class="container col-sm-6" style="width: 500px; float: left">--}%

%{--    <div class="card ">--}%

%{--        <div class="card-body">--}%

%{--            <div style="float: left">--}%
%{--                <g:img class="card-img-left" dir="images" file="${session.user.photo}" alt="Card image"/>--}%

%{--                --}%%{--                <img class="card-img-left" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw8QDhEREA0KDRAQDxAODRAQEA8JFRAKFhIXIhQRExMkHSgsGRslGxMTITEhMSkrLjouFx8/ODMtNygtLjcBCgoKBQwNFQ8FFSsZExkrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAIAAgAMBIgACEQEDEQH/xAAaAAEAAwEBAQAAAAAAAAAAAAAABAUGAwIH/8QAMBAAAgECAwYFAgcBAAAAAAAAAAECAxEEITEFQVFhcZESIqGxwXLwIzJCUoGC4WL/xAAUAQEAAAAAAAAAAAAAAAAAAAAA/8QAFBEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8A+4gAAAAAAAAi4nHU6eTd3wXmf88CDPbPCn3kBcAp4bZ40+0idhsdTqZKVnwflf8AHECUAAAAAAAAAAAAAFVtXHuL8EHZ/qlw5LmWVSXhi3wTfoZVybbb1bbfVgAAAAAFxsvHtvwTd3+iXHk+ZamSUmmmtU011RqqU/FFPik+6A9gAAAAAAAAADjilenP6JezMwjSY3ERpwvJN3ySW9szYAAAAAAZp8IrU4L/AIj7GYNJgsRGpC8U1bJp7mgJIAAAAAAAAAAqNvaU+su9ipNLjMMqkPC8t8XraRnsRQdOXhlZvJ5cGBzAAAAAC22DpU6x72ZW4eg6kvDGybu8+CNDg8MqcPCs3rJ6XkBIAAAAAAAAAAAp9u0s4z/q+u75Lg5V6SnFxej+00BlwHr0v7gAAFr1t6sC02FSzlPpFdd/wXJyoUlCKitF9ts6gAAAAAAAAADzKSSu2kuLyA9ArsRtWnHKN5vlku5V4jHVKmsrL9sfL3e8CPLV9X7gAAI6rqvcADWgzWGx1SnpLxL9svN2e4tMPtWnLKV4Pnmu4FiDzGSaumnzWZ6AAAAcK+JhBXlJLlq30RF2pjXTSjH80s762jx6lJJtu7bbe95gWVfa7eUI25yz7Ir6taU35pSl1+EeAAAAAAAAAAAAHujWlB+WUo9PlFjQ2w9Jxvzjl6FWANNh8TCorxkny0a6o7mTi2ndNpresi72XjXUTjL80c76Xjx6gV+15XrS5KK9CGSNoP8AGn9VvREcAAAAAAAAAAAAAAAAATNkStWjzUl6f4QyRs5/jQ+r4YH/2Q=="  alt="Card image">--}%
%{--            </div>--}%

%{--            <div>${session.user.firstName} ${session.user.lastName}--}%
%{--                <br>--}%
%{--                <br>--}%

%{--                <div><span>${session.user.email}</span>--}%
%{--                    <br>--}%
%{--                    <br>--}%
%{--                    <span style="float: left;padding-left: 10px;">subscription--}%
%{--                        <br>--}%
%{--                        50--}%
%{--                    </span>--}%
%{--                    <span style="float: left;padding-left: 10px;">Posts--}%
%{--                        <br>--}%
%{--                        <a href="1.html">30</a>--}%
%{--                    </span>--}%
%{--                </div>--}%
%{--            </div>--}%
%{--        </div>--}%
%{--    </div>--}%
%{--    <br>--}%
%{--    <br>--}%

%{--    <div class="card">--}%
%{--        <div>--}%

%{--            <g:render template="/topic/createdTopics"/>--}%
%{--        </div>--}%


%{--        --}%%{--        <div class="card-header">Subscriptions<span style="float: right;"><a href="1.html">view all</a></span></div>--}%
%{--        --}%%{--        <div class="card-body"><p> <img class="card-img-left" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw8QDhEREA0KDRAQDxAODRAQEA8JFRAKFhIXIhQRExMkHSgsGRslGxMTITEhMSkrLjouFx8/ODMtNygtLjcBCgoKBQwNFQ8FFSsZExkrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAIAAgAMBIgACEQEDEQH/xAAaAAEAAwEBAQAAAAAAAAAAAAAABAUGAwIH/8QAMBAAAgECAwYFAgcBAAAAAAAAAAECAxEEITEFQVFhcZESIqGxwXLwIzJCUoGC4WL/xAAUAQEAAAAAAAAAAAAAAAAAAAAA/8QAFBEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8A+4gAAAAAAAAi4nHU6eTd3wXmf88CDPbPCn3kBcAp4bZ40+0idhsdTqZKVnwflf8AHECUAAAAAAAAAAAAAFVtXHuL8EHZ/qlw5LmWVSXhi3wTfoZVybbb1bbfVgAAAAAFxsvHtvwTd3+iXHk+ZamSUmmmtU011RqqU/FFPik+6A9gAAAAAAAAADjilenP6JezMwjSY3ERpwvJN3ySW9szYAAAAAAZp8IrU4L/AIj7GYNJgsRGpC8U1bJp7mgJIAAAAAAAAAAqNvaU+su9ipNLjMMqkPC8t8XraRnsRQdOXhlZvJ5cGBzAAAAAC22DpU6x72ZW4eg6kvDGybu8+CNDg8MqcPCs3rJ6XkBIAAAAAAAAAAAp9u0s4z/q+u75Lg5V6SnFxej+00BlwHr0v7gAAFr1t6sC02FSzlPpFdd/wXJyoUlCKitF9ts6gAAAAAAAAADzKSSu2kuLyA9ArsRtWnHKN5vlku5V4jHVKmsrL9sfL3e8CPLV9X7gAAI6rqvcADWgzWGx1SnpLxL9svN2e4tMPtWnLKV4Pnmu4FiDzGSaumnzWZ6AAAAcK+JhBXlJLlq30RF2pjXTSjH80s762jx6lJJtu7bbe95gWVfa7eUI25yz7Ir6taU35pSl1+EeAAAAAAAAAAAAHujWlB+WUo9PlFjQ2w9Jxvzjl6FWANNh8TCorxkny0a6o7mTi2ndNpresi72XjXUTjL80c76Xjx6gV+15XrS5KK9CGSNoP8AGn9VvREcAAAAAAAAAAAAAAAAATNkStWjzUl6f4QyRs5/jQ+r4YH/2Q=="  alt="Card image">content--}%

%{--        --}%%{--        </p>--}%
%{--        --}%%{--        </div>--}%
%{--    </div>--}%
%{--</div>--}%

%{--<div class="container">--}%
%{--    <div class="col-lg-6 m-auto">--}%
%{--        <div class="card bg-white mt-5 p-2">--}%
%{--            <div class="row">--}%

%{--                <div class="col-8 mx-auto my-auto">--}%
%{--                    <div class="card-title text-black">--}%
%{--                        <h5 class="text-center py-2 font-weight-bold mb-0 mt-2">Profile</h5>--}%
%{--                    </div>--}%

%{--                    <div class="card-body">--}%
%{--                        <g:form controller="User" action="update" enctype="multipart/form-data">--}%
%{--                            <g:hiddenField name="id" value="${session.user.id}"/>--}%
%{--                            <g:textField name="lastName" placeholder="Lastname" value="${session.user.lastName}"--}%
%{--                                         class="form-control mb-2"/>--}%
%{--                            <g:textField name="firstName" placeholder="Firstname" value="${session.user.firstName}"--}%
%{--                                         class="form-control mb-2"/>--}%
%{--                            <g:textField name="email" placeholder="Email address" value="${session.user.email}"--}%
%{--                                         class="form-control mb-2"/>--}%
%{--                            <g:textField name="userName" placeholder="User-name" class="form-control mb-2"/>--}%
%{--                            <label for="photo">Select image:</label>--}%
%{--                            <input type="file" id="photo" name="photo">--}%
%{--                        --}%%{--                            <input type="file" accept="image/*" enctype="multipart/form-data">--}%
%{--                            <g:submitButton class="btn btn-success btn-block mt-3 pt-3"--}%
%{--                                            name="update">Update</g:submitButton>--}%
%{--                        </g:form>--}%

%{--                    <!---->--}%
%{--                    </div>--}%

%{--                    <div class="card-title text-black">--}%
%{--                        <h5 class="text-center py-2 font-weight-bold mb-0 mt-2">Update password</h5>--}%
%{--                    </div>--}%

%{--                    <div class="card-body">--}%
%{--                        <g:form controller="User" action="updatePasswords">--}%
%{--                            <g:textField name="password" placeholder="Password" class="form-control mb-2"/>--}%
%{--                            <g:passwordField name="confPassword" placeholder="Confirm Password"--}%
%{--                                             class="form-control mb-2"/>--}%
%{--                            <button class="btn btn-success btn-block mt-3" name="update" class="pt-3">Update</button>--}%
%{--                        </g:form>--}%

%{--                    </div>--}%
%{--                </div>--}%
%{--            </div>--}%
%{--        </div>--}%
%{--    </div>--}%
%{--</div>--}%

</body>
</html>