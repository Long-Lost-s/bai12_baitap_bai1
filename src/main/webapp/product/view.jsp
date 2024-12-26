<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Chi tiết sản phẩm</title>
  <link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body>
<h1>Chi tiết sản phẩm</h1>
<p>
  <a href="/products">Quay lại danh sách</a>
</p>
<table border="1">
  <tr>
    <td><strong>Tên sản phẩm:</strong></td>
    <td>${product.name}</td>
  </tr>
  <tr>
    <td><strong>Giá:</strong></td>
    <td>${product.price}</td>
  </tr>
  <tr>
    <td><strong>Mô tả:</strong></td>
    <td>${product.description}</td>
  </tr>
  <tr>
    <td><strong>Nhà sản xuất:</strong></td>
    <td>${product.manufacturer}</td>
  </tr>
</table>
</body>
</html>
