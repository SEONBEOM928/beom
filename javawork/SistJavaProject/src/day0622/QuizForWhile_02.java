package day0622;

import java.util.Scanner;

public class QuizForWhile_02 {

	public static void quiz1()
	{
		//점수를 반복해서 입력하면 합계를 구하시오
		//1~100 이아니면 제외(continue)
		//0을 입력시 프로그램 종료
		
		Scanner sc=new Scanner(System.in);
		
		int sum=0;
		int score=0;
		
		while(true)
		{
			System.out.println("점수를 입력하시오(0 입력시 종료)");
			score=sc.nextInt();
			
			if(score==0)  // 0을 입력시 종료 (최우선 조건 - 거의 break문은 맨 위에 씀)
				break; 
			
			if(score<1||score>100) // 점수가 1~100 아닐시 값에서 제외하되, 계속 점수를 입력할 수 있음(0은 제외) 
				continue;
			
			sum+=score;	// 조건에 충족된 값만 합산됨(***위치 중요!!!***) 
		}
		System.out.println("합계: "+sum);
		}
	
	public static void quiz2()
	{
		//점수를 반복해서 입력하면 합계,평균을 구하시오
		//끝이라고 입력시 프로그램 종료
		
		Scanner sc=new Scanner(System.in);
		
		String score;
		int sum=0;
		int count=0;
		double avg=0;
		
		while(true)
		{
			System.out.println("점수를 입력하시오(끝이라고 입력시 종료)");
			score=sc.nextLine();
			
			if(score.charAt(0)=='끝')
				break;
			
			if(Integer.parseInt(score)>100||Integer.parseInt(score)<0)
				continue;
			
			count++;
			
			sum+=Integer.parseInt(score);
		}
		avg=(double)sum/count;
		System.out.println("합계: "+sum);
		System.out.println("평균: "+avg);
	
		
	}
	public static void quiz3()
	{
		/* 
		 총 5개의 점수를 입력받아 합계를 구하시오
		 만약 1~100 점이 아닐경우 다시 입력 받아라 
		 ===============
		 1번점수: 88
		 2번점수: 99
		 3번점수: 200
		 	잘못입력했어요
		 3번점수: 33
		    .
		    .
		 ===========
		 합계: **점
		 */
		Scanner sc=new Scanner(System.in);
		
		int score=0;
		int sum=0;
		int count;
		
		for(count=1;count<=5;count++)
		{
		System.out.print(count+"번 점수: ");
		score=sc.nextInt();
		
		if(score<1||score>100)
		{
			System.out.println("   잘못입력했어요");
			count--;
			continue;
		}
		
		sum+=score;
		}
		System.out.println("==============");
		System.out.println("합계: "+sum);
		
		}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//quiz1();
		//quiz2();
		quiz3();
	}

}
