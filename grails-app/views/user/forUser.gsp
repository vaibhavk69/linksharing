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

</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <div class="navbar-nav">
        <a class="navbar-brand" href="#">Link-Sharing</a>
        <span>
        <form class="form-inline navbar-right my-2 my-lg-0" id="001">
            <input class="form-control mr-sm-2" type="text" placeholder="Search">
            <button class="btn btn-success my-2 my-sm-0" type="button" >Search</button>
        </form>
        </span>

    </div>
</nav>
<g:form controller="user" action="input">
<input type="text" placeholder="First Name" name="firstName"><span></span>
<input type="text" placeholder="Last Name" name="lastName"><span></span>
<input type="email" placeholder="Email" name="email"><span></span>
<input type="password" placeholder="Password" name="password"><span></span>
    <g:submitButton name="sdsa">Submit</g:submitButton>
</g:form>
</body>
</html>