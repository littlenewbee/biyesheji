<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/毕业设计/css/ResponseSuspending.css"/>
</head>
<body>
<header>
	<div class="header">
		<span class="title_con">人事管理系统</span>
		<span class="title_con1">欢迎${precord.employeeName}</span>
		<a class="logout" href="/毕业设计/jsp/Main.jsp">返回首页</a>
	</div>
</header>
<div class="container">
<div class="detail">详情描述：<br>${suspending.description}</div>
<button class="agree">回复</button><button class="refuse">放弃</button>
<form action="/毕业设计/responseOtherSuspending"method="get">
	<input type="hidden" name="employeeNum" value="${precord.employeeNum}"/>
	<input type="hidden" name="recipent" value="${suspending.employeeNum}"/>
	<input type="hidden" name="num" value="${suspending.num}"/>
	<div class="cont1">
	<textarea class="t1" rows="25" cols="35" name="description" placeholder="写下回复信息"></textarea><br>
	<input class="tijiao" type="button" value="提交"/><input type="button" name="return" class="qingkong" value="清空"/>
	</div>
</form>
</div>
<script type="text/javascript">
	var num = "${suspending.num}";
</script>
<script type="text/javascript" src="/毕业设计/jquery/jquery-1.8.2.js"></script>
<script type="text/javascript" src="/毕业设计/js/ResponseOtherSuspending.js"></script>
</body>
</html>