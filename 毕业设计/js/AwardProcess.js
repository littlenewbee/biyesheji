/**
 * 
 */
$(function(){
	$(".tijiao").click(function(){
		if($(".t2").val()!="")
		{
			$("form").submit();
		}
	});
	$(".qingkong").click(function(){
		$("textarea").val("");
	});
	$(".confirm").click(function()
	{
		$(".pop").fadeOut("slow");
	});
	$(".confirm1").click(function()
	{
		$(".pop1").fadeOut("slow");
	});
	$(".confirm2").click(function()
	{
		$(".pop2").fadeOut("slow");
	}
	);
	$("a:eq(1)").click(function()
	{
		if((duty)!="劳务员")
		{
		
			$(".pop").fadeIn("slow");
		}
		else
		{
			window.location.href="/毕业设计/entryProcess"/*employeeNum="+employeeNum*/;
		}
		
	});
	
	/**
	 * 链接地址else部分未完成
	 */
	$("a:eq(2)").click(function()
	{
		if((duty)!="组长")
		{
			$(".pop").fadeIn("slow");
		}
		else
		{
			window.location.href="/毕业设计/dismissionProcess";
		}
	})
	$("a:eq(3)").click(function()
	{
		if((duty)!="组长")
		{
			$(".pop").fadeIn("slow");
		}
		else
		{
			window.location.href="/毕业设计/awardProcess";
		}
	})
	$("a:eq(4)").click(function()
	{
		if((duty)!="组长")
		{
			$(".pop").fadeIn("slow");
		}
		else
		{
			window.location.href="/毕业设计/punishmentProcess";
		}
	});
	$("a:eq(5)").click(function()
		{
			if((duty)!="人事员")
			{
				$(".pop").fadeIn("slow");
			}
			else
			{
				window.location.href="/毕业设计/awardManagement";
			}
		});
	$("a:eq(6)").click(function()
	{
		if((duty)!="人事员")
		{
			$(".pop").fadeIn("slow");
		}
		else
		{
			window.location.href="/毕业设计/punishManagement";
		}
	});
	$("a:eq(7)").click(function()
	{
		if((duty)!="人事员")
		{
			$(".pop").fadeIn("slow");
		}
		else
		{
			window.location.href="/毕业设计/entryManagement";
		}
	});
	$("a:eq(8)").click(function()
	{
		if((duty)!="人事员")
		{
			$(".pop").fadeIn("slow");
		}
		else
		{
			window.location.href="/毕业设计/dismissionManagement";
		}
	});
	$("a:eq(9)").click(function()
	{
		if((duty)!="人事员")
		{
			$(".pop").fadeIn("slow");
		}
		else
		{
			window.location.href="/毕业设计/employeeInfoFirstPage";
		}
	});
	$("a:eq(10)").click(function()
			{
				if((duty)!="人事员")
				{
					$(".pop").fadeIn("slow");
				}
				else
				{
					window.location.href="/毕业设计/jsp/DutyChange.jsp";
				}
			});
			$("a:eq(12)").click(function()
			{
				if((duty)!="人事员")
				{
					$(".pop").fadeIn("slow");
				}
				else
				{
					window.location.href="/毕业设计/chargeFirstPage";
				}
			});
			$(".last").click(function(){
				if((duty)!="人事员")
				{
					if(department!="技术部")
					{
						$(".pop").fadeIn("slow");
					}
					else
					{
						window.location.href="/毕业设计/jsp/checkCertificate?employeeNum="+employeeNum;
					}
				}
				else
				{
					window.location.href="/毕业设计/jsp/CertificateManagement.jsp";
				}
			});
	$(".load").click(function()
			{
				window.location.href="/毕业设计/jsp/SuspendingChose.jsp"
			});
	$(".modify").click(function()
			{
				window.location.href="/毕业设计/jsp/UploadInfo.jsp"
			});
});