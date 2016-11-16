<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/毕业设计/css/SuspendingShow.css">
<script type="text/javascript" src="/毕业设计/jquery/jquery-1.8.2.js"></script>
</head>
<body>
<header>
	<div class="header">
		<span class="title_con">人事管理系统</span>
		<span class="title_con1">欢迎  ${precord.employeeName } </span>
		<a class="logout" href="/毕业设计/jsp/Main.jsp">返回首页</a>
	</div>
</header>
<div class="container">
	<c:if test="${pageBean.length==0}">
		<div class="noEvent">
			对不起，暂时没有处理事件。<br>
			<a class="back" href="#">返回上一层</a>
		</div>
	</c:if> 
	<c:if test="${pageBean.length>0}"> 
	<table class="employeeinfo">
	<c:forEach items="${pageBean.data}" var="suspending" varStatus="varStu">
	<tr><td>序号：</td><td>${varStu.count}</td><td>发件人工号：</td><td>${suspending.employeeNum}</td><td>内容：</td><td><div class="description">${suspending.description}</div></td><td><a class="view" href="/毕业设计/otherSuspendingDetail?num=${suspending.num}">查看并回复</a></td></tr>
	</c:forEach> 
	</table>
	<div class="pageNum">
	<span style="color:white">当前页:${pageBean.currentPage}/${pageBean.totalPage}页</span><a class="page" href="/毕业设计/otherSuspendingFirstPage?employeeNum=${precord.employeeNum }">首页</a>
	<a class="page" href="/毕业设计/otherSuspendingPrePage?currentPage=${pageBean.currentPage}&employeeNum=${precord.employeeNum }">上一页</a>
	<a class="page" href="/毕业设计/otherSuspendingNextPage?currentPage=${pageBean.currentPage}&employeeNum=${precord.employeeNum }">下一页</a>
	<a class="page" href="/毕业设计/otherSuspendingLastPage?employeeNum=${precord.employeeNum}">末页</a>
	</div>
	</c:if>  
</div>
<script type="text/javascript">
	var pageLength = "${pageBean.length}";
	var totalPage = "${pageBean.totalPage}";
	var currentPage = "${pageBean.currentPage}";
</script>
<script type="text/javascript" src="/毕业设计/js/EmployeeInfoShow.js"></script> 
<script type="text/javascript">
	$(".back").click(function(){
		window.history.back();
	});
</script>
</body>
</html>