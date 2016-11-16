/**
 * 
 */
$(function()
{
	$(".giveup").click(function()
	{
		window.location.href="/毕业设计/jsp/Main.jsp";
	});
	$(".combo").height(28);
	$(".combo-text").height(28);
	

	/*$("input:eq(1)").focusin(function()
	{
		if($("input:eq(0)").val()=="")
		{
			alert("不允许有空项！");	
		}
	});
	$("input:eq(2)").focusin(function()
			{
				if($("input:eq(1)").val()=="")
				{
					alert("不允许有空项！");	
				}
			});
	
	$("input:eq(3)").focusin(function()
			{
				if($("input:eq(2)").val()=="")
				{
					alert("不允许有空项！");	
				}
			});
	$("input:eq(4)").focusin(function()
			{
				if($("input:eq(3)").val()=="")
				{
					alert("不允许有空项！");	
				}
			});*/
	$(".num").focusout(function(){
		$.ajax({
			url:"/毕业设计/checkEmployee",
			data:{employeeNum:$(".num").val()},
			success:function(data)
			{
				if(data)
				{
					alert("请填入正确的员工号！");
					$(".num").focus();
				}
				/*else
				{
					$.ajax({
						url:"/毕业设计/getEmployeeName",
						data:{employeeNum:$(".num").val()},
						success:function(data)
						{
							$(".name").val(data);
						}
					})
				}*/
			}
		});
	});
	$(".submit").click(function(){
		if($("input:eq(0)").val()!="" && $("input:eq(1)").val()!="" &&  $(".combo-value").val()!="")
		{
			if(checkTime($(".combo-value").val()))
			{
				$("form").submit();
			}
			else
			{
				alert("日期必须是以前的");
			}
			
		}
		else
		{
			alert("请将信息填写完整");
		}
		
	});
	$(".select:eq(0)").change(function(){
		var select = document.getElementById("shi");
		for(var x=0;x<select.length;)
		{
			shi.remove(x);
		} 
		$.ajax({
			url:"/毕业设计/getDuty",
			data:{department:$(".select:eq(0)").val()},
			success:function(data)
			{
				for(i=0;i<data.length;i++)
				{
					var option = document.createElement("option");
					option.text = data[i];
					select.add(option,null);
				}
			}
		});
	});
	
	
	
});