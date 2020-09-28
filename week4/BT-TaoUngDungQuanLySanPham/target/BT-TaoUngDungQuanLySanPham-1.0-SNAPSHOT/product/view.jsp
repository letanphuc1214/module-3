<%--
  Created by IntelliJ IDEA.
  User: nhat
  Date: 4/20/18
  Time: 8:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View product</title>
</head>
<body>
<h1>Product details</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
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
</table>
</body>
</html>