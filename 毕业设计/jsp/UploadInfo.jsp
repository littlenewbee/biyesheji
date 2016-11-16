<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/毕业设计/css/UploadInfo.css"/>
<link rel="stylesheet" type="text/css" href="/毕业设计/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="/毕业设计/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="/毕业设计/easyui/demo/demo.css">
<script type="text/javascript" src="/毕业设计/easyui/jquery.min.js"></script>
<script type="text/javascript" src="/毕业设计/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/毕业设计/easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	var nation = "${precord.nationality}";
</script>
<script type="text/javascript" src="/毕业设计/js/UploadInfo.js"></script>
</head>
<body>
<header>
	<div class="header">
		<span class="title_con">人事管理系统</span>
		<span class="title_con1">欢迎${precord.employeeName } </span>
		<a class="logout" href="/毕业设计/jsp/Main.jsp">返回首页</a>
	</div>
</header>
<div class="tips">更新您的个人信息</div>
<form action="/毕业设计/updateInfo" method="post">
	<input type="hidden"  name="employeeNum" value="${precord.employeeNum}"/>
	<input type="hidden"  name="duty" value="${precord.duty}"/>
	<input type="hidden"  name="department" value="${precord.department}"/>
	<input type="hidden" name="education" value="${precord.education}">
	<div class="con_input">
	<span>员工姓名：</span><input type="text" name="employeeName" value="${precord.employeeName}"><br>
	</div>
	<div class="con_input">
	<span>员工生日：</span><input type="text" name="birthDay" value="${precord.birthDay}" class="easyui-datebox"><br>
	</div>
	<div class="con_input">
	<span>年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄：</span><input type="text" name="employeeAge" value="${precord.employeeAge}"><br>
	</div>
	<div class="con_input">
	<span>身份证号：</span><input type="text" name="idCard" value="${precord.idCard}"><br>
	</div>
	<div class="con_input">
	<span>所属地区：</span>
		<select class="select" name="nationality">
		<option>请选择地区</option>
		<option value="大陆">大陆</option>
		<option value="香港">香港</option>
		<option value="澳门">澳门</option>
		<option value="台湾">台湾</option>
		<option value="外籍">外籍</option>
		</select>
	<br>
	</div>
	<div class="con_input">
	<span>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</span><input type="text" name="password" value="${precord.password}"><br>
	</div>
	<input type="button" class="submit" value="提交"/><input type="button" class="giveup" value="放弃提交"/>
</form>
<a href="/毕业设计/jsp/UploadQuestion.jsp" style="text-decoration:none;font-size:1.5em;font-weight:600;color:white">点击此处来设置或更新密保</a>
</body>
</html>