<%@ page import="model.Customer" %>
<%@ page import="service.CustomerService" %>
<%@ page import="static service.CustomerService.*" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 9/24/2020
  Time: 8:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Customer</title>
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
        th, td {
            padding: 5px;
            text-align: left;
        }
    </style>
</head>
<body>
<h1>Customer List</h1>
<a href="add.jsp">Add</a>
<table width="100%">
    <thead>
    <tr>
        <th>Full name</th>
        <th>Address</th>
        <th>Email</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <%
        ArrayList<Customer> customerArrayList=new ArrayList<>(listCustomer.values());
    for(Customer customer: customerArrayList){
        %>
    <tr>
        <td><%= customer.getFullname()%></td>
        <td><%= customer.getAddress()%></td>
        <td><%= customer.getEmail()%></td>
        <td><a href="edit.jsp?id=<%=customer.getId() %>">Sua |</a> <a href="delete?id=<%=customer.getId() %>"> xoa</a></td>
    </tr>
    <%}%>
    </tbody>
</table>
</body>
</html>
