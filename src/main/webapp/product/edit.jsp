<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Chỉnh sửa sản phẩm</title>
  <link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body>
<h1>Chỉnh sửa sản phẩm</h1>
<p>
  <a href="/products">Quay lại danh sách</a>
</p>
<form method="post" action="/products?action=edit">
  <input type="hidden" name="id" value="${product.id}">
  <fieldset>
    <legend>Thông tin sản phẩm</legend>
    <label for="name">Tên sản phẩm:</label><br>
    <input type="text" name="name" id="name" value="${product.name}" required><br>
    <label for="price">Giá:</label><br>
    <input type="number" step="0.01" name="price" id="price" value="${product.price}" required><br>
    <label for="description">Mô tả:</label><br>
    <textarea name="description" id="description" required>${product.description}</textarea><br>
    <label for="manufacturer">Nhà sản xuất:</label><br>
    <input type="text" name="manufacturer" id="manufacturer" value="${product.manufacturer}" required><br><br>
    <input type="submit" value="Cập nhật sản phẩm">
  </fieldset>
</form>
</body>
</html>
