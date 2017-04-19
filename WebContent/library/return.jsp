<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<title>还书</title>
</head>
<body>

	<div class="container">
		<div class="control-group">
			<s:form class="form-search" action="return" namespace="/books">
				<h2 class="form-register-heading">还书</h2>
				<input type="text" class="input-medium search-query"
				   name="id" placeholder="图书编号" autofocus>
				<button type="submit" class="btn">确认</button>

			</s:form>

		</div>
	</div>
</body>
<style>
body {
	padding-top: 40px;
	padding-bottom: 40px;
	background-color: #eee;
}

.form-search .btn {
	margin-left: 10px;
}

.form-search {
	max-width: 330px;
	padding: 15px;
	margin: 0 auto;
}
</style>
</html>