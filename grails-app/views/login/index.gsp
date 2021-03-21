<%--
  Created by IntelliJ IDEA.
  User: vaibhavkaushik
  Date: 19/03/21
  Time: 11:59 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Link Sharing</title>
    <asset:stylesheet href="style.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>

<body>
<nav class="navbar navbaar-inverse navbar-expand-sm bg-dark navbar-dark">
    <div class="container-fluid">
        <div class="navbar-nav">
            <span >
                <a class="navbar-brand"  href="#">Link-Sharing </a>
            </span>
        </div>
    </div>

</nav>
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
<div class="container">
    <div class="row">
        <div class="col-sm">
            One of three columns
        </div>

        <div class="col-sm">
            <div class="card-custom">
                <g:render template="login"/>
            </div>
            <div class="card-custom">
                <g:render template="register"/>
            </div>
        </div>
    </div>
</div>
</body>
</html>