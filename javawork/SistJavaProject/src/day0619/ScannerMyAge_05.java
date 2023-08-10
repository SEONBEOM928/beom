package day0619;

import java.time.Year;
import java.util.Calendar;
import java.util.Scanner;

public class ScannerMyAge_05 {

	public static void main(String[] args) {
		/* 당신의 이름은? 김민희
		 * 당신의 출생년도는? 1997년
		 * ======================
		 * 이름: 김민희
		 * 현재년도: 2023년
		 * 나이: 26세 */
		
		//생성
		Scanner sc=new Scanner(System.in);
		Calendar cal=Calendar.getInstance();
		
		//변수
		String name;
		int y;
		int age;
		
	    //입력
		System.out.print("당신의 이름은? ");
		name=sc.nextLine();
		System.out.print("당신의 출생년도는? ");
		y=sc.nextInt();
		
		//계산
		age=cal.get(cal.YEAR)-y;
		
		//출력
		System.out.println("=================");
		System.out.println("이름: "+name);
		System.out.println("현재년도: "+cal.get(cal.YEAR));
		System.out.println("나이: "+age);
	}

}
