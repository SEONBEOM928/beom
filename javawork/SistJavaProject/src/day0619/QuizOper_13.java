package day0619;

import java.util.Scanner;

public class QuizOper_13 {

	public static void main(String[] args) {
		/*  
		 * 이름입력
		 * 강호동
		 * 키 
		 * 177.5
		 * 몸무게
		 * 88
		 * 
		 * **학생 키 정보**
		 * 이름: 강호동
		 * 키: 177.5cm
		 * 몸무게: 88 kg
		 * 
		 * 
		 * 권장 표준 몸무게는 69.75입니다
		 * */
		
		Scanner sc=new Scanner(System.in);
		
		String name;
		double tall,wei;
		double good;
		
		System.out.println("이름입력");
		name=sc.nextLine();
		System.out.println("키");
		tall=sc.nextDouble();
		System.out.println("몸무게");
		wei=sc.nextDouble();
		
		good=(tall-100)*0.9;
		
		System.out.println("**학생 키 정보**");
		System.out.println("이름: "+name);
		System.out.println("키: "+tall+"cm");
		System.out.println("몸무게: "+wei+" kg");
		System.out.println("권장 표준 몸무게는 "+good+"입니다");

	}

}
