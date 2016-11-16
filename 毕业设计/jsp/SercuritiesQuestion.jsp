<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		密码找回服务
	</div>
</header>
<c:if test="${empty securities}">
	<div class="subheader">您未设置密保问题，请联系人事员！</div>
<script type="text/javascript">
	var flag=false;
</script>
</c:if>
<c:if test="${!empty securities}">
	<div class="con_input">
		<span>问题: ${securities.question}</span>
	</div>
	<div class="con_input">
		<span>输入答案:</span><input type="text" class="answer"/>
	</div>
	<input type="button" class="submit" value="提交"/>

<script type="text/javascript">
	var flag=true;
	var employeeNum = "${securities.employeeNum}";
	var answer = "${securities.answer}";
</script>
</c:if>
<script type="text/javascript" src="/毕业设计/js/SercuritiesQuestion.js"></script>
</body>
</html>