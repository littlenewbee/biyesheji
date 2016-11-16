<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML> 
<html> 
<head> 
<title></title> 
<link type="text/css" rel="stylesheet" href="/毕业设计/css/Main1.css"> 
</head> 
<body> 
<header>
	<div class="header">
		<span class="title_con">人事管理系统</span>
		<span class="title_con1">欢迎${precord.employeeName } </span>
		<a class="logout" href="/毕业设计/login/login.html">LogOut</a>
	</div>
</header>
<div class="div">
<nav> 
<ul class="clear"> 
<li class="first">
<a href="#">入职审批</a>
</li>
<li> 
<a href="#">离职审批</a> 
</li> 
<li> 
<a href="#">奖励审批</a> 
</li> 
<li> 
<a href="#">惩罚审批</a> 
</li> 
<li><a href="#">奖励管理</a></li> 
<li><a href="#">惩罚管理</a></li> 
<li><a href="#">入职管理</a></li> 
<li><a href="#">离职管理</a></li> 
<li><a href="#">信息管理</a></li> 
<li><a href="#">变动管理</a></li> 
<li><a href="/毕业设计/jsp/NewSuspending.jsp">新建事项</a></li> 
<li ><a href="#">收费管理</a></li> 
<li class="last"><a href="#">证件管理</a></li>
</ul> 
</nav> 
</div>
<div >
<button type="button" class="button modify">修改个人信息</button>
<button type="button" class="button load">待处理事件</button>
<span class="personalinfo">您的个人信息</span>
</div>
<div class="container">
<table class="employeeinfo">
	<tr><td>员工号：</td><td>${precord.employeeNum }</td><td>员工姓名：</td><td>${precord.employeeName }</td></tr>
	<tr><td>所属部门：</td><td>${precord.department }</td><td>担任职务：</td><td>${precord.duty }</td></tr>
	<tr><th>生日：</th><td>${precord.birthDay }</td><th>学历：</th><td>${precord.education }</td></tr>
	<tr><th>年龄：</th><td>${precord.employeeAge }</td></tr>
	<tr><th>身份证号：</th><td>${precord.idCard }</td></tr>
	<tr><th>地区：</th><td>${precord.nationality }</td></tr>
</table>
</div>
<div class="pop">
对不起，你不具有相应的权限
<button type="button" class="confirm">确 定</button>
</div>
<div class="pop1">
您有新的处理事件，请及时到待处理事件中进行处理
<button type="button" class="confirm1">确 定</button>
</div>
<div class="pop2">
您的证件考试时间即将到来
<button type="button" class="confirm2">确 定</button>
</div>
<script type="text/javascript" src="/毕业设计/jquery/jquery-1.8.2.js"></script>
<script type="text/javascript">
	var duty = "${precord.duty}";
	var employeeNum  ="${precord.employeeNum}";
	var department = "${precord.department}";
</script> 
<script type="text/javascript" src="/毕业设计/js/Main.js"></script>
<script type="text/javascript" src="/毕业设计/js/TimeLine.js"></script> 
</body> 
</html> 