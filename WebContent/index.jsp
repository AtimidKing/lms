<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<s:form action="test" namespace="/user" >
			<s:textfield label="用户名" cssClass="input_list" name="user.username" />
			<s:password label="密码" name="user.password" cssClass="input_list" />
			<s:textfield label="电子邮件" name="email" cssClass="input_list" />
			<s:submit value="登录" />
		</s:form>
</center>
</body>
</html>