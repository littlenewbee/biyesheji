<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" href="/毕业设计/css/SercurtiesQuestion.css"/>
<script type="text/javascript" src="/毕业设计/jquery/jquery-1.8.2.js"></script>
<script type="text/javascript" src="/毕业设计/js/FindPassword.js"></script>
</head>
<body>
<header>
	<div class="header">
		<span class="title_con">人事管理系统</span>
		<span class="title_con1">欢迎  ${precord.employeeName} </span>
		<a class="logout" href="/毕业设计/login/login.html">LogOut</a>
	</div>
</header>
<a href="/毕业设计/jsp/Main.jsp" style="font-size: 1em;font-style:normal;margin:0 auto;color:#62ab00;font-weight:400;text-decoration:none">点击返回首页</a>
<div class="con_input">
	<input class="text" type="text" placeholder="请输入要查询的员工号"/>
</div>
<input type="button" class="select" value="查询"/>
<div class="con_input">
<span class="result"></span>
</div>
</body>
</html>