<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 9/28/2020
  Time: 9:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%--
  Created by IntelliJ IDEA.
  User: nhat
  Date: 4/20/18
  Time: 6:57 PM
  To change this template use File | Settings | File Templates.
--%>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <html>
        <head>
            <title>Edit product</title>
        </head>
<body>
<h1>Edit product</h1>
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
                <td><input type="text" name="tensanpham" id="tensanpham" value="${requestScope["product"].getTenSanPham()}"></td>
            </tr>
            <tr>
                <td>Gia san pham: </td>
                <td><input type="text" name="giasanpham" id="giasanpham" value="${requestScope["product"].getGiaSanPham()}"></td>
            </tr>
            <tr>
                <td>Mo ta: </td>
                <td><input type="text" name="mota" id="mota" value="${requestScope["product"].getMoTaSanPham()}"></td>
            </tr>
            <tr>
                <td>Nha san xuat: </td>
                <td><input type="text" name="nhasanxuat" id="nhasanxuat" value="${requestScope["product"].getNhaSanXuat()}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html></title>
</head>
<body>

</body>
</html>
