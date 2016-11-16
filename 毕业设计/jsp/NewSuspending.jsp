<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/毕业设计/css/NewSuspending.css"/>
<script type="text/javascript" src="/毕业设计/jquery/jquery-1.8.2.js"></script>
<script type="text/javascript" src="/毕业设计/js/NewSuspending.js"></script>
</head>
<body>
<header>
	<div class="header">
		<span class="title_con">人事管理系统</span>
		<span class="title_con1">欢迎${precord.employeeName }</span>
		<a class="logout" href="/毕业设计/jsp/Main.jsp">返回首页</a>
	</div>
</header>
<form action="/毕业设计/uploadOtherSuspending" method="post">
<input type="hidden" name="employeeNum" value="${precord.employeeNum }"/>
<span>发送至：</span><input class="recipent" type="text" name="recipent" placeholder="填入工号"/><br>
<textarea class="t2" rows="30" cols="40" name="description" placeholder="写下事项内容"></textarea><br>
<input type="button" name="tijiao" class="submit" value="提交"/>
</form>
</body>
</html>