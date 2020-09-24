<%@ page import="model.Customer" %>
<%@ page import="service.CustomerService" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 9/24/2020
  Time: 8:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit customer</title>
</head>
<body>
<h1>Edit customer</h1>
<a href="index.jsp">Tro lai</a>
<form action="edit" method="post">
    <%
        int id = Integer.parseInt(request.getParameter("id"));
        CustomerService customerService = new CustomerService();
        Customer customer = customerService.getById(id);
    %>
    <label>Full name</label><br>
    <input type="text" name="fullname" value="<%= customer.getFullname()%>"><br>
    <label>Address</label><br>
    <input type="text" name="address" value="<%= customer.getAddress()%>"><br>
    <label>Email</label><br>
    <input type="email" name="email" value="<%= customer.getEmail()%>"><br>
    <input type="hidden" name="id" value="<%= customer.getId()%>"><br>
    <input type="submit" id="submit" value="Edit">
</form>
</body>
</html>
