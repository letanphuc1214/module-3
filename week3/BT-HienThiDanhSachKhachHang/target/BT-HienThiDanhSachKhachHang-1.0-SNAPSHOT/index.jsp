<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Customer" %>
<%@ page import="model.CustomerManage" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 9/25/2020
  Time: 8:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        table{
            width: 100%;
            height: 400px;
        }
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
        th, td {
            padding: 5px;
            text-align: left;
        }
        img{
            width: 100px;
            height: 100px;
        }
    </style>
</head>
<body>
<%

%>
<table>
    <caption>Danh sách khách hàng</caption>
    <thead>
        <tr>
            <th>Tên</th>
            <th>Ngày sinh</th>
            <th>Địa chỉ</th>
            <th>Ảnh</th>
        </tr>
    </thead>
    <tbody>
    <c:forEach items="${CustomerManage.listCustomer}" var="item">
        <tr>
            <td>${item.ten}</td>
            <td>${item.ngaysinh}</td>
            <td>${item.diachi}</td>
            <td><img src="<c:url value="/image/${item.image}"/>" alt="anh"></td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
