<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/毕业设计/css/SuspendingShow.css"/>
<link rel="stylesheet" href="/毕业设计/css/ChargeShow.css"/>
</head>
<body>
<header>
	<div class="header">
		<span class="title_con">人事管理系统</span>
		<span class="title_con1">欢迎  ${precord.employeeName } </span>
		<a class="logout" href="/毕业设计/jsp/Main.jsp">返回首页</a>
	</div>
</header>
<div class="continer">
<c:if test="${pageBean.length==0}">
		<div class="noEvent">
			对不起，暂时没有收费记录。<br>
			<a class="back" href="#">返回上一层</a>
		</div>
</c:if>
<c:if test="${pageBean.length>0 }">
<table class="employeeinfo">
	<tr><th>工号</th><th>姓名</th><th>收费时间</th><th>收费描述</th></tr>
	<c:forEach items="${pageBean.data}" var="charge" varStatus="varStu">
	<tr><td>${charge.employeeNum }</td><td>${charge.employeeName }</td><td>${charge.chargeTime}</td><td><div class="description">${charge.chargeDiscription}</div></td></tr>
	</c:forEach> 
</table>
<div class="pageNum">
	<span style="color:white">当前页:${pageBean.currentPage}/${pageBean.totalPage}页</span><a class="page" href="/毕业设计/chargeFirstPage">首页</a>
	<a class="page" href="/毕业设计/chargePrePage?currentPage=${pageBean.currentPage}">上一页</a>
	<a class="page" href="/毕业设计/chargeNextPage?currentPage=${pageBean.currentPage}">下一页</a>
	<a class="page" href="/毕业设计/chargeLastPage">末页</a>
</div>
</c:if>
</div>
<script type="text/javascript" src="/毕业设计/jquery/jquery-1.8.2.js"></script>
<script type="text/javascript">
	var pageLength = "${pageBean.length}";
	var totalPage = "${pageBean.totalPage}";
	var currentPage = "${pageBean.currentPage}";
</script>
<script type="text/javascript" src="/毕业设计/js/SuspendingShow.js"></script>
</body>
</html>