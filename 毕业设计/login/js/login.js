/**
 * @author Wangxinyu
 */
$(function()
{
	/**
	 * 姓名栏失去焦点
	 */
	$(".username").focusout(function()
	{
		var information = $.ajax({
			url:"/毕业设计/CheckUsername",
			async:false,
			data:{username:$(".username").val()},
			datatType:"html"
		});
		//alert(information.responseText);
		if(information.responseText=="true")
		{
			//alert("jinlai1");
			$(".uspan").html("<img src='img/ok.png'>");
		}
		else if(information.responseText=="false")
		{
			//alert("bbbb");
			$(".uspan").html("<img src='img/no.png'>");
		}
		else
		{
			alert("用户名请输入正确字符！");
		}
		
	});
	/*$(".password").focusin(function()
	{
		//alert("b");
		if($(".username").val()=="")
		{
			alert("请先填写用户名！");
			$(".username").focus();
		}
	});*/
	/**
	 * 密码栏失去焦点
	 */
	$(".password").focusout(function()
		{
			var information = $.ajax({
			url:"/毕业设计/CheckPassword",
			async:false,
			data:{username:$(".username").val(),password:$(".password").val()},
			datatType:"html"
		});
		if(information.responseText=="true")
		{
			//alert("jinlai1");
			$(".pspan").html("<img src='img/ok.png'>");
		}
		else 
		{
			//alert("bbbb");
			$(".pspan").html("<img src='img/no.png'>");
		}
		
	});
	$(".lostpassword").click(function()
	{
		 html  = $(".uspan").html()
		if(html=="<img src=\"img/ok.png\">")
		{
			var val = $(".username").val();
			window.location.href="/毕业设计/querySecurities?employeeNum="+val;
		}
		else
		{
			alert("请先填入正确的用户名");
		}
	});
	
	/**
	 * 点击登录按钮进行验证
	 */
	$(".submit-btn").click(function()
	{
		//alert("check");
		 uhtml = $(".uspan").html();
		 phtml = $(".pspan").html();
		if(uhtml!="<img src=\"img/ok.png\">" ||  phtml!="<img src=\"img/ok.png\">")
		{
			alert("请填写正确的用户名或密码");
		}
		else if($(".username").val()=="" || $(".password").val()=="")
		{
			alert("请填写正确的用户名或密码");
		}
		else
		{
			var information = $.ajax({
				url:"/毕业设计/CheckDuty",
				async:false,
				data:{username:$(".username").val()},
				datatType:"html"
			});
			
			var duty = information.responseText;
			window.location.href="/毕业设计/choosePage?duty="+duty+"&"+"username="+$(".username").val();
		}
	});
});
