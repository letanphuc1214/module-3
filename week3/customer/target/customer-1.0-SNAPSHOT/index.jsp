<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 9/23/2020
  Time: 3:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        .login {
            height:180px; width:230px;
            margin:0;
            padding:10px;
            border:1px #CCC solid;
        }
        .login input {
            padding:5px; margin:5px
        }
    </style>
</head>
<body>
    <form method="post" action="${pageContext.request.contextPath}/loginForm">
        <div class="login">
            <h2>Login</h2>
            <input type="text" name="user" size="30"  placeholder="email" />
            <input type="password" name="pass" size="30" placeholder="password" />
            <input type="submit" value="Sign in"/>
        </div>
    </form>

</body>
</html>
