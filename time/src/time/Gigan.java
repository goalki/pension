package time;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

public class Gigan {
	
	public static void main(String[] args)
	{
	   LocalDate birthday=LocalDate.of(1969, 6, 27);
       LocalDate today=LocalDate.of(2003,10,05);
	   long year=birthday.until(today,ChronoUnit.YEARS);
	   long month=birthday.until(today,ChronoUnit.MONTHS);
	   long day=birthday.until(today,ChronoUnit.DAYS);
	   
	   System.out.println(year);
	   System.out.println(month);
	   System.out.println(day);
	}
}