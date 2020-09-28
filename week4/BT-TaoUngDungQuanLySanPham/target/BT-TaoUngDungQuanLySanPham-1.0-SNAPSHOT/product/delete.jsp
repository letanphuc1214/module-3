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
    <title>Deleting product</title>
</head>
<body>
<h1>Delete product</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Ten san pham: </td>
                <td>${requestScope["product"].getTenSanPham()}</td>
            </tr>
            <tr>
                <td>Gia san pham: </td>
                <td>${requestScope["product"].getGiaSanPham()}</td>
            </tr>
            <tr>
                <td>Mo ta san pham: </td>
                <td>${requestScope["product"].getMoTaSanPham()}</td>
            </tr>
            <tr>
                <td>Nha san xuat: </td>
                <td>${requestScope["product"].getNhaSanXuat()}</td>
            </tr>
            <tr>
                <td><input type="submit" value="Delete product"></td>
                <td><a href="/products">Back to product list</a></td>
            </tr>
        </table>
    </fieldset>
</body>
</html>