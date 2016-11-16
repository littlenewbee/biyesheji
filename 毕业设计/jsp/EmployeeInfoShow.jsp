<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/毕业设计/css/EmployeeInfoShow.css"/>
<script type="text/javascript" src="/毕业设计/jquery/jquery-1.8.2.js"></script>
</head>
<body>
<header>
	<div class="header">
		<span class="title_con">人事管理系统</span>
		<span class="title_con1">欢迎  ${precord.employeeName } </span>
		<a class="logout" href="/毕业设计/jsp/Main.jsp">返回首页</a>
	</div>
	<a href="/毕业设计/jsp/FindPassword.jsp" style="font-size:1.5em;font-weight:400;color:#808080;text-decoration: none;margin:20px auto">员工密码找回</a>
</header>
<table class="employeeinfo">
	<tr><th>工号</th><th>姓名</th><th>年龄</th><th>身份证号</th><th>职务</th><th>生日</th><th>学历</th><th>地区</th><th>部门</th><th>导出员工信息</th><th>删除信息</th></tr>
	<c:forEach items="${pageBean.data}" var="employee" varStatus="varStu">
	<tr><td>${employee.employeeNum }</td><td>${employee.employeeName }</td><td>${employee.employeeAge}</td><td>${employee.idCard }</td><td>${employee.duty }</td><td>${employee.birthDay }</td><td>${employee.education }</td><td>${employee.nationality }</td><td>${employee.department }</td><td><a class="export" href="/毕业设计/exportInfo?employeeNum=${employee.employeeNum }">导出</a></td><td><a class="export" href="/毕业设计/deleteEmployee?employeeNum=${employee.employeeNum}">删除</a></td></tr>
	</c:forEach> 
</table>
	<div class="pageNum">
	<span style="color:white">当前页:${pageBean.currentPage}/${pageBean.totalPage}页</span><a class="page" href="/毕业设计/employeeInfoFirstPage">首页</a>
	<a class="page" href="/毕业设计/employeeInfoPrePage?currentPage=${pageBean.currentPage}">上一页</a>
	<a class="page" href="/毕业设计/employeeInfoNextPage?currentPage=${pageBean.currentPage}">下一页</a>
	<a class="page" href="/毕业设计/employeeInfoLastPage">末页</a>
</div>
<script type="text/javascript">
	var pageLength = "${pageBean.length}";
	var totalPage = "${pageBean.totalPage}";
	var currentPage = "${pageBean.currentPage}";
</script>
<script type="text/javascript" src="/毕业设计/js/EmployeeInfoShow.js"></script>
</body>
</html>