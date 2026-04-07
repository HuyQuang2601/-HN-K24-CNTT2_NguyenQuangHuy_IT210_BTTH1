<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sach nhan vien</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 24px; }
        table { border-collapse: collapse; width: 100%; }
        th, td { border: 1px solid #ddd; padding: 10px; text-align: left; }
        th { background-color: #f2f2f2; }
    </style>
</head>
<body>
<h2>Danh sach nhan vien phong Dao tao</h2>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Ho ten</th>
        <th>Phong ban</th>
        <th>Luong</th>
        <th>Danh gia</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="emp" items="${employees}">
        <tr>
            <td>${emp.id}</td>
            <td>${emp.fullName}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
            <td>
                <c:choose>
                    <c:when test="${emp.salary >= 10000}">
                        Muc luong cao
                    </c:when>
                    <c:otherwise>
                        Muc luong co ban
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
