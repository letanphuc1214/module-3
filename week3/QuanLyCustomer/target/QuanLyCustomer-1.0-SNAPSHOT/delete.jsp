<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 9/24/2020
  Time: 8:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete customer</title>
    <style>
        input {
            width: 300px;
            font-size: 16px;
            border: 2px solid #ccc;
            border-radius: 4px;
            padding: 12px 10px 12px 10px;
        }
        #submit {
            border-radius: 2px;
            padding: 10px 32px;
            font-size: 16px;
        }
    </style>
</head>
<body>
<h1>delete customer</h1>
<a href="index.jsp">Tro lai</a>
<form action="" method="post">
    <label>Email</label><br>
    <input type="text" placeholder="nhap email muon xoa"><br>
    <input type="submit" id="submit" value="Delete">
</form>
</body>
</html>
