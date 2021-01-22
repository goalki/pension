package time;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class Local_Class 
{
	public static void main(String[] args)
	{
	   LocalDateTime today=LocalDateTime.now();
	   
	   int y=today.getYear();
	   int m=today.getMonthValue();
	   int d=today.getDayOfMonth(); // 년,월,일
	   
	   String yo=today.getDayOfWeek().toString(); // 영문요일
	   int yo2=today.getDayOfWeek().getValue(); // 숫자로 1(월)~7(일)
	   
	   int hh=today.getHour();
	   int mm=today.getMinute();
	   int ss=today.getSecond(); // 시,분,초
	   
	   // 윤년 여부  isLeapYear() // LocalDate클래스에 멤버메소드
	   LocalDate toto=LocalDate.now(); //today.toLocalDate();
	   System.out.println(toto.isLeapYear());
	   
	   String chul=y+"년 "+m+"월 "+d+"일 "+yo2+" "+hh+"시 "+mm+"분 "+ss+"초";
	   System.out.println(chul);
	}
}
