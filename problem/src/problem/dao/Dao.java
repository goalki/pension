package problem.dao;

import java.time.LocalDate;
import java.util.ArrayList;

public class Dao {

	//  날짜만들어 날짜를 리턴해주는 메소드
	public String nalja()
	{
		LocalDate today=LocalDate.now();
		String y=today.getYear()+"년";
		String m=today.getMonthValue()+"월";
		String d=today.getDayOfMonth()+"일";
		
		return y+" "+m+" "+d;
	}
	
	// 국영수 입력받아서 합을 구한뒤 리턴해주는 메소드
	public int hap(int kor,int eng,int mat)
	{
		int tot=kor+eng+mat;
		return tot;
	}
	
	public ArrayList<String> view_day(int year,int month,int day)
	{
		LocalDate inday=LocalDate.of(year, month, day);
		
		LocalDate dday1=inday.plusDays(100);
		LocalDate dday2=inday.plusYears(1);
		LocalDate dday3=inday.plusYears(10);
		
		ArrayList<String> list=new ArrayList<String>();
		
		list.add(dday1.toString());
		list.add(dday2.toString());
		list.add(dday3.toString());
		
		return list;
	}
	
	
	
	
	
	
	
	
	
	
	
}
