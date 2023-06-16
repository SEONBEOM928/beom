package day0616;

import java.time.Year;
import java.util.Calendar;

public class MyAge_12 {

	public static void main(String[] args) {
		// 매개변수 args에서 실행시 이름과 태어난 연도를 보낸후 출력하세요(name,myBirth)
		// 이름: 김선범
		// 태어난 연도: 1997
		// 나이: 27세
		
	
		//현재년도는 calendar import하여 구할수있다
		
		Calendar cal=Calendar.getInstance(); 
		
		String name=args[0];
		int myBirth=Integer.parseInt(args[1]);
		
		int age=cal.get(cal.YEAR)-myBirth;
		
		System.out.println("이름: "+name);
		System.out.printf("태어난 연도: %d \n",myBirth);
		System.out.printf("나이: %d 세",age);
	} 
}
