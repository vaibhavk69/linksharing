<%--
  Created by IntelliJ IDEA.
  User: vaibhavkaushik
  Date: 15/03/21
  Time: 4:10 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:form  action="changePass">
    <g:textField name="email" placeholder="Email address" class="form-control mb-2"/>
    <g:passwordField name="password" placeholder="Old Password" class="form-control mb-2"/>
    <g:passwordField name="nPassword" placeholder="New Password" class="form-control mb-2"/>
    <br>
    <br>
    <button class="btn btn-success btn-block mt-3" name="changePass" class="pt-3">Change Password</button>

</g:form>
</body>
</html>