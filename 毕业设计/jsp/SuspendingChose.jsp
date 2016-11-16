<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/毕业设计/css/SuspendingChose.css">
</head>
<body>
<header>
	<div class="header">
		<a class="firstPage" href="/毕业设计/jsp/Main.jsp">返回首页</a>
		<span class="title_con">待处理事件</span>
		<span class="title_con1">欢迎   ${precord.employeeName }</span>
		<a class="logout" href="/毕业设计/login/login.html">退出登录</a>
	</div>
</header>
<div class="suspending">流程处理事件</div>
<div class="otherSuspending">其他处理事件</div>
<script type="text/javascript" src="/毕业设计/jquery/jquery-1.8.2.js"></script>
<script type="text/javascript">
	var employeeNum = "${precord.employeeNum}";
</script>
<script type="text/javascript" src="/毕业设计/js/SuspendingChose.js"></script>
</body>
</html>