<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML> 
<html> 
<head> 
<title></title> 
<link type="text/css" rel="stylesheet" href="/毕业设计/css/AwardProcess.css"> 
</head> 
<body> 
<header>
	<div class="header">
		<span class="title_con">人事管理系统</span>
		<span class="title_con1">欢迎${precord.employeeName } </span>
		<a class="logout" href="/毕业设计/jsp/Main.jsp">返回首页</a>
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
<span class="personalinfo">员工奖励申请单</span> 
</div>
<div class="container">
<form action="/毕业设计/uploadAwardProcess"method="get">
	<input type="hidden" name="employeeNum" value="${precord.employeeNum }"/>
	<input type="hidden" name="type" value="award"/>
	<textarea class="t2" rows="40" cols="60" name="description" placeholder="写下奖励员工理由"></textarea>
	<input type="button" class="tijiao" value="提交"/><input type="button" name="return" class="qingkong" value="清空"/>
</form>
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
<script type="text/javascript" src="/毕业设计/js/AwardProcess.js"></script>
<script type="text/javascript" src="/毕业设计/js/TimeLine.js"></script>
</body> 
</html> 