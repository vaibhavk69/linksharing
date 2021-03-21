<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>LINK SHARING</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"></script>
    <script src="https://kit.fontawesome.com/a390992c2b.js" crossorigin="anonymous"></script>
    <asset:stylesheet src="style.css"/>
    <script>
        var deleteSubsUrl = "${createLink(controller: 'subscription', action: 'unSub')}";

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

<g:render template="/user/navBar"/>

<div class="container ">

    <div class="row">

        <div class="col-5">

            <div class="card-custom">

                <g:render template="userCard"/>

            </div>

            <div class="card-custom">

                <g:render template="/subscription/subsCard"/>

            </div>

            <div class="card-custom">

                <g:render template="/topic/topicsTrending"/>

            </div>

        </div>

        <div class="col-7">

            <div class="card-custom">

                <g:render template="/resource/postInbox"/>

            </div>

        </div>

    </div>


</div>
</body>
</html>