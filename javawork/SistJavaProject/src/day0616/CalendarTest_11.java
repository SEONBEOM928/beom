package day0616;

import java.util.Calendar;
import java.util.Date;

public class CalendarTest_11 {

	public static void main(String[] args) {
		
		//Date date=new Date();
		//System.out.println("지금은 "+date.getYear());
		
		Calendar cal=Calendar.getInstance();
		System.out.println("지금은 "+cal.get(cal.YEAR)+"년도입니다");
		System.out.println("지금은"+(cal.get(cal.MONTH)+1)+"월입니다");
		System.out.println("지금은 "+cal.get(cal.DATE)+"일 입니다");
		System.out.println("지금은 "+cal.get(cal.DAY_OF_MONTH)+"일 입니다");
        System.out.println("지금은 "+cal.get(cal.HOUR)+"시 입니다");
        System.out.println("지금은 "+cal.get(cal.MINUTE)+"분 입니다 ");
	}
}
