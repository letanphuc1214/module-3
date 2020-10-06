<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>User Management Application</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<div id="editEmployeeModal" class="modal">
    <div class="modal-dialog">
        <div class="modal-content">
            <form method="post">
                <div class="modal-header">
                    <h4 class="modal-title">Edit User</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <c:if test="${user != null}">
                            <input type="hidden" name="id" value="<c:out value='${user.id}' />"/>
                        </c:if>
                    </div>
                    <div class="form-group">
                        <label>Name</label>
                        <input type="text" name="name" size="45" value="<c:out value='${user.name}' />"
                               class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" name="email" size="45"
                               value="<c:out value='${user.email}' />" class="form-control" required/>
                    </div>
                    <div class="form-group">
                        <label>Country</label>
                        <input type="text" name="country" size="15"
                               value="<c:out value='${user.country}' />" class="form-control" required/>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="submit" class="btn btn-info" value="Save">
                        <a href="${pageContext.request.contextPath}/users?action=users" class="btn btn-info"><span>Cancel</span></a>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>