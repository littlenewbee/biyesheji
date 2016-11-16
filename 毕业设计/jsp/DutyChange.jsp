<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script type="text/javascript" src="/毕业设计/js/CheckTime.js"></script>
<script type="text/javascript" src="/毕业设计/js/DutyChange.js"></script>
</head>
<body>
<header>
	<div class="header">
		<a class="firstPage" href="/毕业设计/jsp/Main.jsp">返回首页</a>
		<span class="title_con">职务变动管理</span>
		<span class="title_con1">欢迎   ${precord.employeeName }</span>
		<a class="logout" href="/毕业设计/login/login.html">LogOut</a>
	</div>
</header>
<div class="tips">请填写好职务变动人员的信息</div>
<form action="/毕业设计/dutyChange" method="get" >
<div class="con_input">
	<span>员工工号：</span><input class="num" type="text" name="employeeNum"/><br>
</div>
<div class="con_input">
	<span>员工姓名：</span><input class="name" type="text" name="employeeName"/><br>
</div>
<div class="con_input">
	<span>所属部门：</span>
	<select class="select" name="department">
		<option>请选择部门</option>
		<option value="人力部">人力部</option>
		<option value="后勤部">后勤部</option>
		<option value="安全部">安全部</option>
		<option value="总经理办公室">总经理办公室</option>
		<option value="技术部">技术部</option>
		<option value="营业部">营业部</option>
		<option value="财务部">财务部</option>
	</select><br>
</div>
<div class="con_input">
	<span>现任职务：</span>
	<select class="select" name="preDuty" id="pre">
		<%-- <option>请选择职务</option>
		<c:forEach items="${duty}" var="dutyO">
		<option value="${dutyO}">${dutyO}</option>
		</c:forEach> --%>
	</select><br>
</div>
<div class="con_input">
	<span>变动部门：</span>
	<select class="select" name="department">
		<option>请选择部门</option>
		<option value="人力部">人力部</option>
		<option value="后勤部">后勤部</option>
		<option value="安全部">安全部</option>
		<option value="总经理办公室">总经理办公室</option>
		<option value="技术部">技术部</option>
		<option value="营业部">营业部</option>
		<option value="财务部">财务部</option>
	</select><br>
</div>
<div class="con_input">
	<span>变动职务：</span>
	<select class="select" name="afterDuty" id="after">
		<%-- <c:forEach items="${duty}" var="dutyO">
		<option value="${dutyO}">${dutyO}</option>
		</c:forEach> --%>
	</select><br>
</div>
<div class="con_input">
	<span>变动时间：</span><input type="text" name="changeTime" class="easyui-datebox"/><br>
</div>
	<input type="button" class="submit" value="提交"/>
</form>
</body>
</html>