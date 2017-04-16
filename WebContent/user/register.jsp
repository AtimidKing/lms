<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册图书馆账户</title>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->

<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<!-- Custom styles for this template -->
<link href="../css/register.css" rel="stylesheet">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
	<form class="form-register" action="user/register">
		<h2 class="form-register-heading">注册</h2>
		<label for="inputUsername" class="sr-only">用户名</label> 
		<input type="text" id="inputUsername" class="form-control"
			placeholder="用户名" required autofocus> 
		<label for="inputPassword" class="sr-only">密码</label> 
		<input type="password" id="inputPassword" class="form-control"
			placeholder="密码" required> 
		<label for="inputPassword" class="sr-only">确认密码</label> 
		<input type="password" id="inputPassword" class="form-control" 
			placeholder="确认密码" required>
		<label for="inputEmail" class="sr-only">电子邮箱</label>
		<input type="email" id="imputEmail" class="form-control"
			placeholder="电子邮箱" required>
		<label for="inputValidationCode" class="sr-only">验证码</label>
		<input type="text" id="inputValidationCode" class="form-control"
			placeholder="验证码" required>
		<img src="user/validate_code.action" id="img_validation_code" class="img-responsive" >
		<a href="#" onClick="refresh()">重新获取验证码</a>
		<button class="btn btn-lg btn-primary btn-block" type="submit">Sign
			in</button>
	</form>

	</div>
	<!-- /container -->
</body>
<script type="text/javascript">
	//获取图像验证码
	function refresh() {
		//获取显示图形验证码的img标签
		var img = document.getElementById("img_validation_code");
		//设置图形验证码的URL
		img.src = "user/validate_code.action?" + Math.random();
	}
</script>
</html>