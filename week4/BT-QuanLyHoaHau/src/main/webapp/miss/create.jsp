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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>Registration miss</title>

    <style>
        .message{
            color:green;
        }
    </style>
</head>
<body>
<h1>Registration miss</h1>
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
                <td>Họ tên: </td>
                <td><input type="text" name="hoten" id="hoten" required></td>
            </tr>
            <tr>
                <td>Ngày sinh: </td>
                <td><input type="text" name="ngaysinh" id="ngaysinh" required></td>
            </tr>
            <tr>
                <td>Địa chỉ cư trú: </td>
                <td><input type="text" name="diachi" id="diachi" required></td>
            </tr>
            <tr>
                <td>Số điện thoại: </td>
                <td><input type="text" name="sdt" id="sdt" required></td>
            </tr>
            <tr>
                <td>Email: </td>
                <td><input type="text" name="email" id="email" required></td>
            </tr>
            <tr>
                <td>Số CMT/Hộ chiếu: </td>
                <td><input type="text" name="cmt" id="cmt" required></td>
            </tr>
            <tr>
                <td>Nghề nghiệp: </td>
                <td><input type="text" name="nghenghiep" id="nghenghiep" required></td>
            </tr>
            <tr>
                <td>Trình độ văn hóa: </td>
                <td><input type="text" name="trinhdo" id="trinhdo" required></td>
            </tr>
            <tr>
                <td>Dân tộc: </td>
                <td><input type="text" name="dantoc" id="dantoc" required></td>
            </tr>
            <tr>
                <td>Đơn vị công tác/học tập: </td>
                <td><input type="text" name="donvicongtac" id="donvicongtac" required></td>
            </tr>
            <tr>
                <td>Chiều cao: </td>
                <td><input type="text" name="chieucao" id="chieucao" required></td>
            </tr>
            <tr>
                <td>Cân nặng: </td>
                <td><input type="text" name="cannang" id="cannang" required></td>
            </tr>
            <tr>
                <td>Năng khiếu khác: </td>
                <td><input type="text" name="nangkhieu" id="nangkhieu" required></td>
            </tr>
            <tr>
                <td>Ảnh cá nhân: </td>
                <td><input type="text" name="anhcanhan" id="anhcanhan" required></td>
            </tr>
            <tr>
                <td>Đại diện tỉnh thành: </td>
                <td>
                    <select name="tinhthanh">
                        <c:forEach items="${listMiss}" var="list">
                            <option value="${list.getTenTinhThanh()}">${list.getTenTinhThanh()}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>