/**
 * 
 */
$(function()
{

	var count1 =1;
	var count2 =1;
	function TimeLine()
	{
		this.arr=[];
		this.add=function(timeout,func)
		{
			this.arr.push({
				timeout : timeout,
				func : func
			});
		}
		this.start=function()
		{
			for(var i in this.arr)
			{
				!function(obj)
				{
					setInterval(obj.func,obj.timeout);
				}(this.arr[i]);
			}
		}
	}
	var timeline = new TimeLine();
	//不断地检测待处理事件，每秒触发一次。
	timeline.add(10000,function()
	{
		$.ajax({
			url:"/毕业设计/checkPending",
			data:{"employeeNum":employeeNum},
			success:function(data){
				if(data>=count1)
				{
					count1++;
					$(".pop1").fadeIn("slow");
					$(".load").html("新处理事件").css({background:"#33FFDD"});
				}
				
			}
		
		});
	});
	//扫描另一个处理时间
	timeline.add(10000,function(){
		
		$.ajax({
			url:"/毕业设计/checkOtherPending",
			data:{"employeeNum":employeeNum},
			success:function(data){
				if(data>=count2)
				{
					count2++;
					$(".pop1").fadeIn("slow");
					$(".load").html("新处理事件").css({background:"#33FFDD"});
				}
				
			}
		
		});
	});
	if(department=="技术部")
	{
		//不断地检测考试时间，间隔时间为1小时触发一次
		timeline.add(1000*3600,function()
		{
			$.ajax({
				url:"/毕业设计/checkTestTime",
				data:{"employeeNum":employeeNum},
				//传过来json
				success:function(data){
					var date = new date();
					if(data.month==(date.getMonth()+1))
					{
						if(data.day==(date.getDate()+1))
						{
							$(".pop2").fadeIn("slow");
							
						}
					}
				}
			});
		});
	}
	
	timeline.start();
});