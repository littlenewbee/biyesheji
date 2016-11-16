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
</head>
<body>
<header>
	<div class="header">
		<span class="title_con">人事管理系统</span>
		<span class="title_con1">欢迎${precord.employeeName } </span>
		<a class="logout" href="/毕业设计/jsp/Main.jsp">返回首页</a>
	</div>
</header>
<div class="subheader">登记员工证件</div>
<form action="/毕业设计/uploadCertificate" method="post">
	<div class="con_input">
	<span>员&nbsp;&nbsp;工&nbsp;号：</span><input type="text" class="num" name="employeeNum">
	</div>
	<div class="con_input">
	<span>员工姓名：</span><input type="text" class="name" name="employeeName">
	</div>
	<div class="con_input">
	<span>上次考试：</span><input type="text" name="lastTestTime" class="easyui-datebox">
	</div>
	<div class="con_input">
	<span>考试描述：</span><input type="text" name="description">
	</div>
	<input type="button" class="submit" value="提交"/>
</form>
<a href="/毕业设计/jsp/UpdateCertificate.jsp" style="font-style:oblique;font-size: 1.5em;font-weight: 400;text-decoration: none;color:#62ab00;margin:10px auto">更改员工证件信息</a>
<script type="text/javascript" src="/毕业设计/js/CheckTime.js"></script>
<script type="text/javascript" src="/毕业设计/js/CertificateManagement.js"></script>
</body>
</html>