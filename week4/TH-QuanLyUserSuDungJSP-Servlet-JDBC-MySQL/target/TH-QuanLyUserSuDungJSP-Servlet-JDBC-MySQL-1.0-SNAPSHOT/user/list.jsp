<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>User Management Application</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script src="script/js.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-xl">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8 row-logo" style="display: flex;">
                        <div class="logo-content"><h2>Quản lý user</h2></div>
                        <div class="search">
                            <form action="${pageContext.request.contextPath}/users?action=search" method="post">
                                <input type="text" name="search">
                                <input type="submit" value="tìm kiếm">
                            </form>
                        </div>

                    </div>
                    <div class="col-sm-4">
                        <a href="${pageContext.request.contextPath}/users?action=create" class="btn btn-success"><i
                                class="material-icons">&#xE147;</i> <span>Add New User</span></a>
                        <a href="${pageContext.request.contextPath}/users?action=sort" class="btn btn-danger"><i
                                class="material-icons">&#xE15C;</i> Sort User</a>
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Country</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${listUser}">
                    <tr>
                        <td><c:out value="${user.id}"/></td>
                        <td><c:out value="${user.name}"/></td>
                        <td><c:out value="${user.email}"/></td>
                        <td><c:out value="${user.country}"/></td>
                        <td>
                            <a href="/users?action=edit&id=${user.id}" class="edit"><i
                                    class="material-icons"
                                    data-toggle="tooltip"
                                    title="Edit">&#xE254;</i></a>
                            <a href="/users?action=delete&id=${user.id}" class="delete"><i
                                    class="material-icons"
                                    data-toggle="tooltip"
                                    title="Delete">&#xE872;</i></a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
<%--<center>--%>
<%--    <h1>User Management</h1>--%>
<%--    <h2>--%>
<%--        <a href="/users?action=create">Add New User</a>--%>
<%--    </h2>--%>
<%--    <form action="/users?action=search" method="post">--%>
<%--        <input type="text" name="search">--%>
<%--        <input type="submit" value="tìm kiếm">--%>
<%--    </form>--%>
<%--</center>--%>
<%--<div align="center">--%>
<%--    <table border="1" cellpadding="5">--%>
<%--        <caption><h2>List of Users</h2></caption>--%>
<%--        <tr>--%>
<%--            <th>ID</th>--%>
<%--            <th>Name</th>--%>
<%--            <th>Email</th>--%>
<%--            <th>Country</th>--%>
<%--            <th>Actions</th>--%>
<%--        </tr>--%>
<%--        <c:forEach var="user" items="${listUser}">--%>
<%--            <tr>--%>
<%--                <td><c:out value="${user.id}"/></td>--%>
<%--                <td><c:out value="${user.name}"/></td>--%>
<%--                <td><c:out value="${user.email}"/></td>--%>
<%--                <td><c:out value="${user.country}"/></td>--%>
<%--                <td>--%>
<%--                    <a href="/users?action=edit&id=${user.id}">Edit</a>--%>
<%--                    <a href="/users?action=delete&id=${user.id}">Delete</a>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--    </table>--%>
<%--    <a href="/users?action=sort">sort users List</a>--%>
<%--</div>--%>