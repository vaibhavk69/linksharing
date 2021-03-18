<%--
  Created by IntelliJ IDEA.
  User: vaibhavkaushik
  Date: 15/03/21
  Time: 3:39 AM
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
                    <input class="form-control mr-sm-2" type="text" placeholder="Search">
                    <button class="btn btn-success my-2 my-sm-0" type="button" >Search</button>
                    <i class="far fa-comment fa-2x" style="margin-left: 5px ;color: #b3d7ff;"  data-toggle="modal" data-target="#myModal1"></i>

                    <g:render template="/topic/createTopic"></g:render>

                    <i class="fas fa-link fa-2x" style="color: #b3d7ff;margin-left: 5px" data-toggle="modal" data-target="#myModal2"></i>
                    <g:render template="/resource/addDoc"></g:render>
                    <i class="far fa-envelope fa-2x" style="color: #b3d7ff;margin-left: 5px" data-toggle="modal" data-target="#myModal3"></i>
                    <g:render template="/resource/addLink"></g:render>
                    <i class="far fa-sticky-note fa-2x" style="color: #b3d7ff;margin-left: 5px" data-toggle="modal" data-target="myModal4"></i>

                    <div style="float: right; ">
%{--                        <a class="dash_links nav-link dropdown-toggle" id="navbarDropdownMenuLink-4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="font-size: 20px">--}%

%{--                            <i class="dash_links fas fa-user fa-1x"></i>&nbsp;&nbsp;${session.user.firstName}</a>--}%


%{--                        <div class="dropdown-menu dropdown-menu-right dropdown-info" aria-labelledby="navbarDropdownMenuLink-4">--}%
%{--                            <g:link controller="User" action="profile" class="dropdown-item">Profile</g:link>--}%
%{--                            <g:link controller="User" action="logout" class="dropdown-item">Logout</g:link>--}%
                        </div>

                    </div>

                </div>
            </span>

        </div>
    </div>

</nav>
<table class="table table-bordered" style="margin: 10px 10px 10px;float: left">
    <thead>
    <tr>
        <g:sortableColumn property="id" title="Id"/>
        <g:sortableColumn property="userName" title="Username"/>
        <g:sortableColumn property="email" title="Email"/>
        <g:sortableColumn property="firstName" title="Firstname"/>
        <g:sortableColumn property="lastName" title="Lastname"/>
        <g:sortableColumn property="active" title="Active"/>
        <th>Manage</th>
    </tr>
    </thead>
    <tbody>

    <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
    </tr>
    <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
    </tr>
    <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
    </tr>
    </tbody>
</table>
</body>
</html>