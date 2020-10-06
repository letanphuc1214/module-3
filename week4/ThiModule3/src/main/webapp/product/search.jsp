<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>Product Management Application</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class="container-xl">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8 row-logo" style="display: flex;">
                        <div class="logo-content"><h2>Product List</h2></div>
                        <div class="search">
                            <form action="${pageContext.request.contextPath}/products?action=search" method="post">
                                <input type="text" name="search">
                                <input type="submit" value="tìm kiếm">
                            </form>
                        </div>

                    </div>
                    <div class="col-sm-4">
                        <a href="${pageContext.request.contextPath}/products?action=products" class="btn btn-success"><i
                                class="material-icons">&#xE147;</i> <span>Back Product List</span></a>
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Product Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Color</th>
                    <th>Description</th>
                    <th>Category</th>

                </tr>
                </thead>
                <tbody>
                <c:forEach var="product" items="${listProduct}">
                    <tr>
                        <td>${product.getId()}</td>
                        <td>${product.getProductName()}</td>
                        <td>${product.getPrice()}</td>
                        <td>${product.getAmount()}</td>
                        <td>${product.getColor()}</td>
                        <td>${product.getDescription()}</td>
                        <td>${product.getCategories().getCategoryName()}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>