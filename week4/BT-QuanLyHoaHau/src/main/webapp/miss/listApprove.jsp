
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nhat
  Date: 4/20/18
  Time: 6:57 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Miss Manager List</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
</head>
<body>
<h1>Miss Manager</h1>
<p>
    <a href="/missManagers?action=create">Register</a>
</p>
<p>
    <a href="/missManagers">Back to miss list</a>
</p>
<table border="1">
    <tr>
        <th rowspan ="2">Họ tên</th>
        <th rowspan="2">Ngày sinh</th>
        <th rowspan="2">Địa chỉ cư trú</th>
        <th colspan="2">Địa chỉ liên lạc</th>
        <%--        <th rowspan="2">Số CMT/hộ chiếu</th>--%>
        <%--        <th rowspan="2">Nghề nghiệp</th>--%>
        <%--        <th rowspan="2">Trình độ văn hóa</th>--%>
        <%--        <th rowspan="2">Dân tộc</th>--%>
        <%--        <th rowspan="2">Đơn vị công tác/học tập</th>--%>
        <%--        <th rowspan="2">Chiều cao</th>--%>
        <%--        <th rowspan="2">Cân nặng</th>--%>
        <%--        <th rowspan="2">Năng khiếu khác</th>--%>
        <%--        <th rowspan="2">Ảnh cá nhân</th>--%>
        <th rowspan="2">Đại diện tỉnh thành</th>
        <th rowspan="2">Xét duyệt</th>

    </tr>
    <tr>
        <td>SĐT</td>
        <td>Email</td>
    </tr>
    <c:forEach items='${requestScope["missManagers"]}' var="miss">
        <tr>
            <td><a href="/missManagers?action=view&id=${miss.getId()}">${miss.getHoTen()}</a></td>
            <td>${miss.getNgaySinh()}</td>
            <td>${miss.getDiaChiCuTru()}</td>
            <td>${miss.getSoDienThoai()}</td>
            <td>${miss.getEmail()}</td>
                <%--            <td>${missManager.getCMT()}</td>--%>
                <%--            <td>${missManager.getNgheNghiep()}</td>--%>
                <%--            <td>${missManager.getTrinhDoVanHoa()}</td>--%>
                <%--            <td>${missManager.getDanToc()}</td>--%>
                <%--            <td>${missManager.getDonViCongTac()}</td>--%>
                <%--            <td>${missManager.getChieuCao()}</td>--%>
                <%--            <td>${missManager.getCanNang()}</td>--%>
                <%--            <td>${missManager.getNangKhieu()}</td>--%>
                <%--            <td>${missManager.getAnhCaNhan()}</td>--%>
            <td>${miss.getTinhThanh()}</td>
            <td><a href="/missManagers?action=duyet&id=${miss.getId()}">${miss.getTrangThai()}</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>