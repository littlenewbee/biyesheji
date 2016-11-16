/**
 * 
 */
$(function()
{
	$(".submit").click(function(){
		if($("input:eq(0)").val()=="" || $("input:eq(1)").val()=="")
		{
			alert("请填入相应项");
		}
		else if($("input:eq(0)").val()!=$("input:eq(1)").val())
		{
			alert("两次填入密码不相同");
		}
		else
		{
			window.location.href="/毕业设计/uploadNewPassword?employeeNum="+employeeNum+"&password="+$("input:eq(0)").val();
		}
	});
});