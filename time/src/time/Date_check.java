package time;

import java.time.LocalDateTime;

public class Date_check 
{
	public static void main(String[] args)
	{
		LocalDateTime today=LocalDateTime.now(); 
		
		// plusYears(값) => 값 년후   plus대신에  minus도 있다..
		// plusMonths(값) => 값 개월후
		// plusDays(값) => 값 일후
		// plusHours(값), plusMinutes(값), plusSeconds(값)
		LocalDateTime xday=today.plusDays(1000);
		
		int y=xday.getYear();
		int m=xday.getMonthValue();
		int d=xday.getDayOfMonth();
		
		System.out.println(y+"년 "+m+"월 "+d+"일");
	}
}
