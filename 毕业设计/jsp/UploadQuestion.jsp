<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/毕业设计/jquery/jquery-1.8.2.js"></script>
<link rel="stylesheet" href="/毕业设计/css/SercurtiesQuestion.css"/>
<script type="text/javascript" src="/毕业设计/js/UploadQuestion.js"></script>
</head>
<body>
<header>
	<div class="header">
		<span class="title_con">人事管理系统</span>
		<span class="title_con1">欢迎${precord.employeeName } </span>
		<a class="logout" href="/毕业设计/login/login.html">返回登录页面</a>
	</div>
</header>
<form action="/毕业设计/uploadQuestion" method="post">
<input type="hidden" name="employeeNum" value="${precord.employeeNum}">
<div class="con_input">
	<span>设置新的问题：</span><input type="text" name="question"/>
</div>
<div class="con_input">
	<span>设置新的答案：</span><input type="text" name="answer"/>
</div>
<input type="button" class="submit" value="提交"/>
</form>
</body>
</html>