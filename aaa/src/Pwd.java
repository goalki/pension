

import java.util.Random;

public class Pwd {
   public static void main(String[] args)
   {
	   Random ran=new Random();
	   String pwd="";
	   for(int i=0;i<10;i++)   // 10자리 임의의 아스키값 
	   {
		   pwd=pwd+(char)(ran.nextInt(65)+48);
	   }
	   System.out.println(pwd);
   }
}
