<%@ page import="dao.ProductDAO" %>
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
<div id="addEmployeeModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <form method="post">
                <div class="modal-header">
                    <h4 class="modal-title">Add new product</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Name</label>
                        <input type="text" name="productname" id="name" size="45" class="form-control" required/>
                    </div>
                    <div class="form-group">
                        <label>Price</label>
                        <input type="number" class="form-control"  name="price" id="price" size="45" required>
                    </div>
                    <div class="form-group">
                        <label>Quantity</label>
                        <input type="number" class="form-control"  name="amount" id="quantity" size="45" required>
                    </div>
                    <div class="form-group">
                        <label>Color</label>
                        <input type="text" class="form-control"  name="color" id="color" size="45" required>
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <input type="text" class="form-control"  name="description" id="description" size="45" required>
                    </div>
                    <div class="form-group">
                        <label>Category</label>
                        <select name="category">
                            <c:forEach items="${listCategory}" var="list">
                                <option value="${list.getIdCategory()}">${list.getCategoryName()}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <a href="/products?action=products" class="btn btn-success"><span>Back</span></a>
                    <input type="submit" class="btn btn-success" value="Create">
                </div>
            </form>
        </div>
    </div>
</div>

<% if(ProductDAO.created){%>
<%String str = "<script>alert('Product add successfully')</script>";%>
<%=str%>
<%}%>
<% ProductDAO.created = false; %>
</body>
</html>