<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="../css/library_add.css">

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>添加图书</title>
</head>
<body>
	<div class="container">
	<div class="control-group">
		<s:form class="form-add" action="add" namespace="/books">
		<h2 class="form-register-heading">添加图书</h2>
			<label for="inputBookname" class="sr-only">图书名称</label> <input
				type="text" id="inputbookname" class="form-control"
				name="book.name" placeholder="图书名称" required autofocus>
			<input type="text" id="inputbookname" class="form-control"
				name="book.author" placeholder="图书作者" required> <input
				type="text" id="inputbookname" class="form-control"
				name="book.sort" placeholder="图书分类" required> <input
				type="text" id="inputbookname" class="form-control"
				name="book.publishunit" placeholder="出版单位" required> <input
				type="text" id="inputbookname" class="form-control"
				name="book.publishdate" placeholder="出版时间" required> <input
				type="text" id="inputbookname" class="form-control"
				name="book.address" placeholder="图书馆地址" required>

				<button class="btn btn-lg  btn-block" type="submit">添加</button>
		</s:form>
		</div>
	</div>
</body>
</html>