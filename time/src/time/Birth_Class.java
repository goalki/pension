package time;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;

public class Birth_Class
{
	public static void main(String[] args)
	{
	   //LocalDateTime today=LocalDateTime.now(); 
	   //LocalDateTime birthday=LocalDateTime.of(1991,3,5,10,10,10);
       LocalDate birthday=LocalDate.of(1969, 6, 27);
       LocalDate today=LocalDate.now();
	   long year=birthday.until(today,ChronoUnit.YEARS);
	   long month=birthday.until(today,ChronoUnit.MONTHS);
	   long day=birthday.until(today,ChronoUnit.DAYS);
	   //long hour=birthday.until(today,ChronoUnit.HOURS);
	   //long minute=birthday.until(today,ChronoUnit.MINUTES);
	   //long second=birthday.until(today,ChronoUnit.SECONDS);
	   
	   System.out.println(year);
	   System.out.println(month);
	   System.out.println(day);
	   //System.out.println(hour);
	   //System.out.println(minute);
	   //System.out.println(second);
	   
	   
	}
}
