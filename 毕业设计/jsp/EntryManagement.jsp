<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head> 
<title></title> 
<link rel="stylesheet" type="text/css" href="/毕业设计/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="/毕业设计/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="/毕业设计/easyui/demo/demo.css">
<link type="text/css" rel="stylesheet" href="/毕业设计/css/EntryManagement.css"> 
<script type="text/javascript" src="/毕业设计/easyui/jquery.min.js"></script>
<script type="text/javascript" src="/毕业设计/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/毕业设计/easyui/locale/easyui-lang-zh_CN.js"></script>
</head> 
<body> 
<header>
	<div class="header">
		<a class="firstPage" href="/毕业设计/jsp/Main.jsp">返回首页</a>
		<span class="title_con">入职管理</span>
		<span class="title_con1">欢迎   ${precord.employeeName }</span>
		<a class="logout" href="/毕业设计/login/login.html">LogOut</a>
	</div>
</header>
<div class="tips">请正确填写好入职人员的相关信息</div>
<form action="/毕业设计/uploadEntryManagement" method="get" >
<div class="con_input">
	<span>员工工号：</span><input class="num" type="text" name="employeeNum"/><br>
</div>
<div class="con_input">
	<span>员工姓名：</span><input class="name" type="text" name="employeeName"/><br>
</div>
<div class="con_input">
	<span>入职日期：</span><input type="text" name="entryTime" class="easyui-datebox"/><br>
</div>
<div class="con_input">
	<span>所属部门：</span>
	<select class="select" name="department">
		<option>请选择部门</option>
		<c:forEach items="${department}" var="depart">
		<option value="${depart}">${depart}</option>
		</c:forEach>
	</select><br>
</div>
<div class="con_input">
	<span>职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务：</span>
	<select id="shi" class="select" name="duty">
	</select><br>
</div>

	<input type="button" class="submit" value="提交"/><input type="button" class="giveup" value="放弃提交"/>
</form>
<script type="text/javascript" src="/毕业设计/js/CheckTime.js"></script>
<script type="text/javascript" src="/毕业设计/js/EntryManagement.js"></script>
</body>
</html>