<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 9/23/2020
  Time: 2:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Bang cuu chuong</h2>
<table>
    <% for (int i = 2; i <= 9; i++) { %>
    <tr>
        <% for (int j = 1; j <= 9; j++) { %>
            <td>
                <%= i + " x " + j + " = " + i * j %>
            </td>
        <% } %>

    </tr>
    <% } %>

</table>
</body>
</html>
