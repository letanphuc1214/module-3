<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nhat
  Date: 4/20/18
  Time: 6:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new product</title>
    <style>
        .message{
            color:green;
        }
    </style>
</head>
<body>
<h1>Create new product</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/products">Back to product list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Ten san pham: </td>
                <td><input type="text" name="tensanpham" id="tensanpham"></td>
            </tr>
            <tr>
                <td>Gia san pham: </td>
                <td><input type="text" name="giasanpham" id="giasanpham"></td>
            </tr>
            <tr>
                <td>Mo ta san pham: </td>
                <td><input type="text" name="mota" id="mota"></td>
            </tr>
            <tr>
                <td>Nha san xuat: </td>
                <td><input type="text" name="nhasanxuat" id="nhasanxuat"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>