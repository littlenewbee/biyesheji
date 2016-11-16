/**
 * 
 */
$(function(){
	$(".submit").click(function()
	{
		if($("input:eq(0)").val()!="" && $("input:eq(1)").val()!="")
		{
			$("form").submit();
		}
		else
		{
			alert("请将数据填好");
		}
	});
			
});