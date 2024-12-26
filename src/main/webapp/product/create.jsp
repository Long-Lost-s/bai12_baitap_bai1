<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Thêm sản phẩm mới</title>
  <link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body>
<h1>Thêm sản phẩm mới</h1>
<p>
  <a href="/products">Quay lại danh sách</a>
</p>
<form method="post" action="/products?action=create">
  <fieldset>
    <legend>Thông tin sản phẩm</legend>
    <label for="name">Tên sản phẩm:</label><br>
    <input type="text" name="name" id="name" required><br>
    <label for="price">Giá:</label><br>
    <input type="number" step="0.01" name="price" id="price" required><br>
    <label for="description">Mô tả:</label><br>
    <textarea name="description" id="description" required></textarea><br>
    <label for="manufacturer">Nhà sản xuất:</label><br>
    <input type="text" name="manufacturer" id="manufacturer" required><br><br>
    <input type="submit" value="Thêm sản phẩm">
  </fieldset>
</form>
</body>
</html>
