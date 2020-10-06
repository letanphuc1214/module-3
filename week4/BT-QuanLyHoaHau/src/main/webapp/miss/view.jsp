<%--
  Created by IntelliJ IDEA.
  User: nhat
  Date: 4/20/18
  Time: 8:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>Customer Management Application</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script src="javascript/js.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<h1>Miss details</h1>
<p>
    <a href="${pageContext.request.contextPath}/missManagers">Back to miss list</a>
</p>
<table>
    <tr>
        <td>Họ tên: </td>
        <td>${requestScope["missManager"].getHoTen()}</td>
    </tr>
    <tr>
        <td>Ngày sinh: </td>
        <td>${requestScope["missManager"].getNgaySinh()}</td>
    </tr>
    <tr>
        <td>Địa chỉ cư trú: </td>
        <td>${requestScope["missManager"].getDiaChiCuTru()}</td>
    </tr>
    <tr>
        <td>Số điện thoại: </td>
        <td>${requestScope["missManager"].getSoDienThoai()}</td>
    </tr>
    <tr>
        <td>Email: </td>
        <td>${requestScope["missManager"].getEmail()}</td>
    </tr>
    <tr>
        <td>Số CMT/Hộ chiếu: </td>
        <td>${requestScope["missManager"].getCMT()}</td>
    </tr>
    <tr>
        <td>Nghề nghiệp: </td>
        <td>${requestScope["missManager"].getNgheNghiep()}</td>
    </tr>
    <tr>
        <td>Trình độ văn hóa: </td>
        <td>${requestScope["missManager"].getTrinhDoVanHoa()}</td>
    </tr>
    <tr>
        <td>Dân tộc: </td>
        <td>${requestScope["missManager"].getDanToc()}</td>
    </tr>
    <tr>
        <td>Đơn vị công tác/học tập: </td>
        <td>${requestScope["missManager"].getDonViCongTac()}</td>
    </tr>
    <tr>
        <td>Chiều cao: </td>
        <td>${requestScope["missManager"].getChieuCao()}</td>
    </tr>
    <tr>
        <td>Cân nặng: </td>
        <td>${requestScope["missManager"].getCanNang()}</td>
    </tr>
    <tr>
        <td>Năng khiếu khác: </td>
        <td>${requestScope["missManager"].getNangKhieu()}</td>
    </tr>
    <tr>
        <td>Ảnh cá nhân: </td>
        <td><img src="<c:url value="${requestScope['missManager'].getAnhCaNhan()}"/>" alt="anh"></td>


<%--        <td><img src="<c:url value="${requestScope["missManager"].getAnhCaNhan()}"/>"></td>--%>
<%--        <td>${requestScope["missManager"].getAnhCaNhan()}</td>--%>
    </tr>
    <tr>
        <td> Đại diện tỉnh thành: </td>
        <td>${requestScope["missManager"].getTinhThanh()}</td>
    </tr>
</table>
</body>
</html>