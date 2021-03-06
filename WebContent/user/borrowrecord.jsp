<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../css/site.min.css" rel="stylesheet">

<link
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<title>我的借书记录</title>
</head>
<body>
	<div class="container">
		<h2 class="form-signin-heading">我的借书记录</h2>
		<div class="table-responsive" style="margin-top: 10px">
			<table class="table table-striped">

				<tr>
					<th>图书编号</th>
					<th>书名</th>
					<th>作者</th>
					<th>出版社</th>
					<th>出版日期</th>
					<th>地址</th>
				</tr>
				<s:iterator value="listBook" var="book">
					<tr>
						<td><s:property value="#book.getId()" /></td>
						<td><s:property value="#book.getName()" /></td>
						<td><s:property value="#book.getAuthor()" /></td>
						<td><s:property value="#book.getPublishunit()" /></td>
						<td><s:property value="#book.getPublishdate()" /></td>
						<td><s:property value="#book.getAddress()" /></td>
						<td><s:a
								action="../record/return.action?book.id=%{#book.getId()}"
								onClick="return window.confirm('确认还书')">还书</s:a></td>
				</s:iterator>
			</table>
		</div>
	</div>
</body>
<style>
body {
	padding-top: 40px;
	padding-bottom: 40px;
	background-color: #eee;
}
</style>
</html>