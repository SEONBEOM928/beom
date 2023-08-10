package day0620;

import java.util.Calendar;
import java.util.Scanner;

public class ScannerReview_01 {

	public static void main(String[] args) {
		/* 
		 * 태어난연도: 1997
		 * 이름: 홍길동
		 * 핸드폰번호: 010-1234-5678
		 * 주소: 서울시 동작구
		 * ===========================
		 *    [개인정보]
		 * 이름: 홍길동
		 * 나이: 26세
		 * 연락처: 010-1234-5678
		 * 주소: 서울시 동작구
		 * */
		
		Scanner sc=new Scanner(System.in);
		Calendar cal=Calendar.getInstance();
		
		String name,num,home;
		int y,age;
	
		
		System.out.print("태어난연도: ");
		y=Integer.parseInt(sc.nextLine());
		// y=sc.nextInt();도 맞는표현이나, 정수 입력값 후 문자입력값 받을시 버퍼가 날 확률이 커 Integer로 쓸것.
		System.out.print("이름: ");
		name=sc.nextLine();
		System.out.print("핸드폰번호: ");
		num=sc.nextLine();
		System.out.print("주소: ");
		home=sc.nextLine();
		
		age=cal.get(cal.YEAR)-y;
		
		System.out.println("======================");
		System.out.println("   [개인정보]");
		System.out.println("이름: "+name);
		System.out.println("나이: "+age);
		System.out.println("연락처: "+num);
		System.out.println("주소: "+home);
		
		
		
		
	}
	
}
