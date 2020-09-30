<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 9/28/2020
  Time: 9:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>Edit miss</title>
</head>
<body>
<h1>Edit miss</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/missManagers">Back to miss list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Miss information</legend>
        <table>
            <tr>
                <td>Họ tên:</td>
                <td><input type="text" name="hoten" id="hoten" value="${missManager.getHoTen()}"></td>
            </tr>
            <tr>
                <td>Ngày sinh:</td>
                <td><input type="text" name="ngaysinh" id="ngaysinh" value="${missManager.getNgaySinh()}"></td>
            </tr>
            <tr>
                <td>Địa chỉ cư trú:</td>
                <td><input type="text" name="diachi" id="diachi" value="${missManager.getDiaChiCuTru()}"></td>
            </tr>
            <tr>
                <td>Số điện thoại:</td>
                <td><input type="text" name="sdt" id="sdt" value="${missManager.getSoDienThoai()}"></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="text" name="email" id="email" value="${missManager.getEmail()}"></td>
            </tr>
            <tr>
                <td>Số CMT/Hộ chiếu:</td>
                <td><input type="text" name="cmt" id="cmt" value="${missManager.getCMT()}"></td>
            </tr>
            <tr>
                <td>Nghề nghiệp:</td>
                <td><input type="text" name="nghenghiep" id="nghenghiep" value="${missManager.getNgheNghiep()}"></td>
            </tr>
            <tr>
                <td>Trình độ văn hóa:</td>
                <td><input type="text" name="trinhdo" id="trinhdo" value="${missManager.getTrinhDoVanHoa()}"></td>
            </tr>
            <tr>
                <td>Dân tộc:</td>
                <td><input type="text" name="dantoc" id="dantoc" value="${missManager.getDanToc()}"></td>
            </tr>
            <tr>
                <td>Đơn vị công tác/học tập:</td>
                <td><input type="text" name="donvicongtac" id="donvicongtac" value="${missManager.getDonViCongTac()}">
                </td>
            </tr>
            <tr>
                <td>Chiều cao:</td>
                <td><input type="text" name="chieucao" id="chieucao" value="${missManager.getChieuCao()}"></td>
            </tr>
            <tr>
                <td>Cân nặng:</td>
                <td><input type="text" name="cannang" id="cannang" value="${missManager.getCanNang()}"></td>
            </tr>
            <tr>
                <td>Năng khiếu khác:</td>
                <td><input type="text" name="nangkhieu" id="nangkhieu" value="${missManager.getNangKhieu()}"></td>
            </tr>
            <tr>
                <td>Ảnh cá nhân:</td>
                <td><input type="text" name="anhcanhan" id="anhcanhan" value="${missManager.getAnhCaNhan()}"></td>
            </tr>
            <tr>
                <td>Đại diện tỉnh thành:</td>
                <td>
                    <select name="tinhthanh">
                        <option value="${missManager.getTinhThanh()}">${missManager.getTinhThanh()}</option>
                        <c:forEach items="${listMiss}" var="list">
                            <option value="${list.getTenTinhThanh()}">${list.getTenTinhThanh()}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update miss"></td>
            </tr>

        </table>
    </fieldset>
</form>
</body>
</html>
</title>
</head>
<body>

</body>
</html>
