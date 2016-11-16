<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/毕业设计/css/AwardManagement.css"/>
<link rel="stylesheet" href="/毕业设计/css/ShowCertificate.css"/>
</head>
<body>
<header>
	<div class="header">
		<a class="firstPage" href="/毕业设计/jsp/Main.jsp">返回首页</a>
		<span class="title_con">员工证件信息</span>
		<span class="title_con1">欢迎   ${precord.employeeName }</span>
		<a class="logout" href="/毕业设计/login/login.html">LogOut</a>
	</div>
</header>
<table class="info">
<tr><td>员工工号：</td><td>fdvsdfscs</td></tr>
<tr><td>姓&nbsp;&nbsp;名：</td><td>dsvdfbfdbfdbd</td></tr>
<tr><td>上次时间：</td><td>ngbf</td></tr>
<tr><td>描&nbsp;&nbsp;述：</td><td>d</td></tr>
</table>
<%-- <div class="con_input">
	<span>员工工号：</span><span></span>
</div>
<div class="con_input">
	<span>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</span><span></span>
</div>
<div class="con_input">
	<span>上次时间：</span><span>${certificate.lastTestTime}</span>
</div>
<div class="con_input">
	<span>描&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;述：</span><span>${certificate.description}</span>
</div> --%>
</body>
</html>