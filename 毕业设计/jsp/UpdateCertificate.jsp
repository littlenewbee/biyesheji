<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/毕业设计/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="/毕业设计/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="/毕业设计/easyui/demo/demo.css">
<link rel="stylesheet" href="/毕业设计/css/SercurtiesQuestion.css">
<script type="text/javascript" src="/毕业设计/easyui/jquery.min.js"></script>
<script type="text/javascript" src="/毕业设计/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/毕业设计/easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="/毕业设计/js/CheckTime.js"></script>
<script type="text/javascript" src="/毕业设计/js/UpdateCertificate.js"></script>
</head>
<body>
<header>
	<div class="header">
		<span class="title_con">人事管理系统</span>
		<span class="title_con1">欢迎${precord.employeeName } </span>
		<a class="logout" href="/毕业设计/jsp/Main.jsp">返回首页</a>
	</div>
</header>
<div class="subheader">更新员工证件考试时间</div>
<form action="/毕业设计/updateCertificate" method="post">
	<div class="con_input">
	<span>员&nbsp;&nbsp;工&nbsp;号：</span><input class="num" type="text" name="employeeNum">
	</div>
	<div class="con_input">
	<span>时间更新：</span><input type="text" name="lastTestTime" class="easyui-datebox">
	</div>
	<input type="button" class="submit" value="提交"/>
</form>
</body>
</html>