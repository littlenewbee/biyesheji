/**
 * 
 */
function checkTime(data)
{
	var date = new Date();
	var array = data.split("-");
	if(parseInt(date.getFullYear())>parseInt(array[0]))
	{
		return true;
	}
	else if(parseInt(date.getFullYear())<parseInt(array[0])){
		return false;
	}
	else
	{
		if((parseInt(date.getMonth())+1)>parseInt(array[1]))
		{
			return true;
		}
		else if((parseInt(date.getMonth())+1)<parseInt(array[1]))
		{
			return false;
		}
		else
		{
			if(parseInt(date.getDate())>parseInt(array[2]))
			{
				return true;
			}
			else if(parseInt(date.getDate())<parseInt(array[2]))
			{
				return false;
			}
			else
			{
				return true;
			}
			
		}
	}
}