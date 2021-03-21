<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--navbar-->

    <!--sign-up and login-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/a390992c2b.js" crossorigin="anonymous"></script>
    <!--top share and post-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbaar-inverse navbar-expand-sm bg-dark navbar-dark">
    <div class="container-fluid">
        <div class="navbar-nav" style=" width: 100%;">
            <span style="float: left">
                <a class="navbar-brand"  href="#">Link-Sharing </a>
            </span>
        </div>
    </div>

</nav>
<br>
<g:if test="${flash.messageCredentialsError}">
    <div style="text-align: center"><span class="message" style="color: green">${flash.messageCredentialsError}</span></div>
</g:if>
<br>
<div class="container col-sm-6" style="margin-top: 30px;">

    <div style="float: left; width: 500px; margin-left: 20px;">
%{--        <g:render template="recentShares" />--}%
%{--
%{--            <g:render template="/topic/trendingTopics"/>--}%
        <br>
        <br>
%{--        <g:render template="/resource/topPost"/>--}%
%{--
    </div>

    <div class="container">
        <div class="col-lg-6 m-auto">
            <div class="card bg-white mt-5 p-2">
                <div class="row">

                    <div class="col-8 mx-auto my-auto">
                        <div class="card-title text-black">
                            <h5 class="text-center py-2 font-weight-bold mb-0 mt-2">Login</h5>
                        </div>
                        <div class="card-body">
%{--                            <g:form  action="login">--}%
%{--                                <input type="email" name="email" placeholder="Email address" class="form-control mb-2" required>--}%
%{--                                <input type="password" name="password" placeholder="Password" class="form-control mb-2" required>--}%
%{--                                <input type="password" name="confPassword" placeholder="Confirm password" class="form-control mb-2" required>--}%
%{--                                <br>--}%
%{--                                <br>--}%
%{--                                <g:form  controller="user" action="forgotPassword">--}%
%{--                                    <div id="demo" class="collapse">--}%
%{--                                        <div class="form-group mt-2">--}%
%{--                                            <input type="email" name="email" class="form-style" placeholder="Your Email" id="email" autocomplete="off">--}%
%{--                                            <i class="input-icon uil uil-at"></i>--}%
%{--                                        </div>--}%
%{--                                        <g:actionSubmit value="submit" action="forgotPassword" class="btn mt-4" style="background-color: white;"/>--}%
%{--                                    --}%
%{--                                    </div>--}%
%{--                                </g:form>--}%
                                <button class="btn btn-success btn-block mt-3" name="login" class="pt-3">LogIn</button>

%{--                            </g:form>--}%
                            <p class="mb-0 mt-4 text-center"><a href="#0" class="link" data-toggle="collapse" data-target="#demo">Forgot your password?</a></p>
                            <br>
                            <g:form  controller="user" action="forgotPassword">
                                <div id="demo" class="collapse">
                                    <div class="form-group mt-2">
                                        <input type="email" name="email" class="form-style" placeholder="Your Email" id="email" autocomplete="off" required>
                                        <i class="input-icon uil uil-at"></i>
                                    </div>
                                    <g:actionSubmit value="submit" action="forgotPassword" class="btn mt-4" style="background-color: white;"/>
                                </div>
                            </g:form>
                        </div>

                        <p>OR</p>

                        <div class="card-title text-black">
                            <h5 class="text-center py-2 font-weight-bold mb-0 mt-2">Register</h5>
                        </div>
                        <div class="card-body">
                            <g:form controller="User" action="register">
                                <input type="text" name="lastName" placeholder="Lastname" class="form-control mb-2" required>
                                <input type="text" name="firstName" placeholder="Firstname" class="form-control mb-2" required>
                                <input type="email" name="email" placeholder="Email address" class="form-control mb-2" required>
                                <input type="text" name="userName" placeholder="User-Name" class="form-control mb-2" required>
                                <input type="password" name="password" placeholder="Password" class="form-control mb-2" minlength="8" maxlength="16" required>
                                <input type="password" name="confPassword" placeholder="Confirm password" class="form-control mb-2" minlength="8" maxlength="16" required>
%{--                                <span>--}%
%{--                                    <label for="photo">Select image:</label><input type="file" id="photo" name="photo" >--}%
%{--                                </span>--}%
                                <g:submitButton class="btn btn-success btn-block mt-3 pt-3" name="register" >Submit</g:submitButton>
                            </g:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<div class="modal fade" id="forget_password_modal" role="dialog " aria-hidden="true">
    <div class="modal-dialog">
        <g:form   controller="user" action="forgetPassword" class="form-horizontal">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Forget Password</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group form-group-sm">
                        <div class="col-xs-5 ">
                            <label class=" control-label" for="email">Enter your Email</label>
                        </div>
                        <div class="col-xs-7 ">
                            <input class="form-control" name="email" type="text" id="usName" required >
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-default">Submit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </g:form>
    </div>
</div>
</body>
</html>