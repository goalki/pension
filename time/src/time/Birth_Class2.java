package time;

import java.time.LocalDateTime;
import java.time.Period;

public class Birth_Class2 
{
	public static void main(String[] args)
	{
		LocalDateTime today=LocalDateTime.now(); 
	    LocalDateTime xday=LocalDateTime.of(2016,9,10,10,10,10);
	    
	    Period pp=Period.between(xday.toLocalDate(),today.toLocalDate());
	    
	    int y=pp.getYears();
	    int m=pp.getMonths();
	    int d=pp.getDays();
	    
	    System.out.println(y+"년 "+m+"월 "+d+"일");
	}
}

