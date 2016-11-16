/**
 * 
 */
$(function()
{
	if(employeeNum==6)
	{
		if(!(type=="entry"))
		{
			
		}
		else
		{
			excute();
		}
	}
	else
	{
		excute();
	}
	function excute()
	{
		$(".agree").click(function()
		{
			$(".cont1").addClass("cont").css({left:"500px",top:"350px",opacity:1});
		});
		$(".refuse").click(function(){
			$(".cont2").addClass("cont").css({right:"480px",top:"350px",opacity:1});
		});
		$(".qingkong").click(function()
		{
			$(".t1").val("");
			$(".t2").val("");
		});
		$(".tijiao").click(function(){
			if($(".t2").val()!="")
			{
				$("form").submit();
			}
			else
			{
				alert("请填好数据");
			}
		});
		
	}
	
});