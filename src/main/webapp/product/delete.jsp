<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Xóa sản phẩm</title>
  <link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body>
<h1>Xóa sản phẩm</h1>
<p>
  <a href="/products">Quay lại danh sách</a>
</p>
<form method="post" action="/products?action=delete">
  <input type="hidden" name="id" value="${product.id}">
  <p>Bạn có chắc chắn muốn xóa sản phẩm <strong>${product.name}</strong> không?</p>
  <input type="submit" value="Xóa sản phẩm">
</form>
</body>
</html>
