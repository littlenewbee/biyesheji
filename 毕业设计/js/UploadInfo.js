/**
 * 
 */
$(function()
{
	$(".combo").height(28);
	$(".combo-text").height(28);
	$(".giveup").click(function()
	{
		window.location.href="/毕业设计/jsp/Main.jsp";
	});
	$(".submit").click(function(){
		if($("input:eq(4)").val()!="" && $("input:eq(6)").val()!="" && $("input:eq(7)").val()!="" && $(".combo-value").val()!="")
		{
			alert($(".combo-value").val());
			$("form").submit();
		}
		else
		{
			alert("请填好相应信息");
		}
	});
	
})