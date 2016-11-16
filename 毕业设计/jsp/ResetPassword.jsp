<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/毕业设计/css/SercurtiesQuestion.css"/>
<script type="text/javascript" src="/毕业设计/jquery/jquery-1.8.2.js"></script>

</head>
<body>
<header>
	<div class="header">
		<span class="title_con">人事管理系统</span>
		<a class="logout" href="/毕业设计/login/login.html">返回登录页面</a>
	</div>
	<div class="subheader">
		重置密码
	</div>
</header>
<div class="con_input">
	<span>输入新密码：</span><input type="text"/>
</div>
<div class="con_input">
	<span>请确认密码：</span><input type="text"/>
</div>
<input type="button" class="submit" value="提交"/>
</body>
<script type="text/javascript">
	var employeeNum = "${employeeNum}";
</script>
<script type="text/javascript" src="/毕业设计/js/ResetPassword.js"></script>
</html>