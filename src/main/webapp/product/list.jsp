<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Danh sách sản phẩm</title>
    <link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body>
<h1>Danh sách sản phẩm</h1>
<p>
    <a href="/products?action=create">Thêm sản phẩm mới</a>
</p>

<form method="get" action="/products">
    <input type="hidden" name="action" value="search">
    <input type="text" name="name" placeholder="Nhập tên sản phẩm">
    <input type="submit" value="Tìm kiếm">
</form>

<table border="1">
    <tr>
        <th>Tên sản phẩm</th>
        <th>Giá</th>
        <th>Mô tả</th>
        <th>Nhà sản xuất</th>
        <th>Hành động</th>
    </tr>
    <c:forEach items="${products}" var="product">
        <tr>
            <td><a href="/products?action=view&id=${product.id}">${product.name}</a></td>
            <td>${product.price}</td>
            <td>${product.description}</td>
            <td>${product.manufacturer}</td>
            <td>
                <a href="/products?action=edit&id=${product.id}">Sửa</a>
                <a href="/products?action=delete&id=${product.id}">Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
