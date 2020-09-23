<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 9/23/2020
  Time: 8:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
<%--    <link rel="stylesheet" type="text/css" href="css/style.css">--%>
</head>
<body>
<h2>Product Discount Calculator</h2>
<form action="${pageContext.request.contextPath}/display-discount" method="post">
    <label>Product Description: </label><br/>
    <input type="text" name="description" placeholder="DESCRIPTION"/><br/>
    <label>List Price: </label><br/>
    <input type="text" name="price" placeholder="Price" value="0"/><br/>
    <label>Discount Percent: </label><br/>
    <input type="text" name="discount" placeholder="DISCOUNT" value="0"/><br/>
    <input type = "submit" id = "submit" value = "Converter"/>
</form>
</body>
</html>
