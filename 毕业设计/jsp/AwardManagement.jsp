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
<link type="text/css" rel="stylesheet" href="/毕业设计/css/AwardManagement.css"> 
<script type="text/javascript" src="/毕业设计/easyui/jquery.min.js"></script>
<script type="text/javascript" src="/毕业设计/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/毕业设计/easyui/locale/easyui-lang-zh_CN.js"></script>
</head>
<body> 
<header>
	<div class="header">
		<a class="firstPage" href="/毕业设计/jsp/Main.jsp">返回首页</a>
		<span class="title_con">奖励管理</span>
		<span class="title_con1">欢迎   ${precord.employeeName }</span>
		<a class="logout" href="/毕业设计/login/login.html">LogOut</a>
	</div>
</header>
<div class="tips">请正确填写好被奖励人员的信息及奖励描述</div>
<form action="/毕业设计/uploadAwardManagement" method="get" >
<div class="con_input">
	<span>员工工号：</span><input class="num" type="text" name="employeeNum"/><br>
</div>
<div class="con_input">
	<span>员工姓名：</span><input class="name" type="text" name="employeeName"/><br>
</div>
<div class="con_input">
	<span>奖励日期：</span><input type="text" name="awardTime" class="easyui-datebox"/><br>
</div>
<div class="con_input">
	<span>奖励描述：</span>
</div>
<textarea class="t2" rows="15" cols="30" name="awardDescription" placeholder="请填入对奖励的描述"></textarea><br>
	<input type="button" class="submit" value="提交"/><input type="button" class="giveup" value="放弃提交"/>
</form>
<script type="text/javascript" src="/毕业设计/js/CheckTime.js"></script>
<script type="text/javascript" src="/毕业设计/js/AwardManagement.js"></script>
</body>
</html>