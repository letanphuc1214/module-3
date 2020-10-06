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
<div id="editEmployeeModal" class="modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <form method="post">
                <div class="modal-header">
                    <h4 class="modal-title">Edit Product</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <c:if test="${product != null}">
                            <input type="hidden" name="id" value="<c:out value='${product.id}' />"/>
                        </c:if>
                    </div>
                    <div class="form-group">
                        <label>Name</label>
                        <input type="text" name="productname" size="45" value="${product.getProductName()}"
                               class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Price</label>
                        <input type="text" name="price" size="45"
                               value="${product.getPrice()}" class="form-control" required/>
                    </div>
                    <div class="form-group">
                        <label>Quantity</label>
                        <input type="text" name="amount" size="15"
                               value="${product.getAmount()}" class="form-control" required/>
                    </div>
                    <div class="form-group">
                        <label>Color</label>
                        <input type="text" name="color" size="15"
                               value="${product.getColor()}" class="form-control" required/>
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <input type="text" name="description" size="15"
                               value="${product.getDescription()}" class="form-control" required/>
                    </div>
                    <div class="form-group">
                        <label>Category</label>
                        <select name="category">
                            <c:forEach items="${listCategory}" var="list">
                                <c:if test="${product.getIdCategory()==list.getIdCategory()}">
                                    <option value="${list.getIdCategory()}"
                                            selected>${list.getCategoryName()}</option>
                                </c:if>
                                <c:if test="${!(product.getIdCategory()==list.getIdCategory())}">
                                    <option value="${list.getIdCategory()}">${list.getCategoryName()}</option>
                                </c:if>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="submit" class="btn btn-info" value="Update">
                    <a href="${pageContext.request.contextPath}/products?action=products" class="btn btn-info"><span>Back</span></a>
                </div>
            </form>
        </div>
    </div>
</div>
<% if (ProductDAO.created) {%>
<%String str = "<script>alert('Product edit successfully')</script>";%>
<%=str%>
<%}%>
<% ProductDAO.created = false; %>
</body>
</html>