package day0626;

import java.util.Scanner;

import day0622.StartsWith_03;

public class ArrserchCnt_01 {

	public static void main(String[] args) {
		/* 
		  Q. 반복문 안에서 실행/  성을 입력시 그 성씨를 가진 사람과 총 인원수 출력.. 종료라고 하면 프로그램 종료 */
		
		Scanner sc=new Scanner(System.in);
		
		String [] names= {"김선호","나나","이효리","엄정화","김완선","보아","유재석","하하","김연진","이진"};
		
		String serch; //입력할 성
		int cnt;
		boolean flag;
		
		while(true)
		{
			System.out.println("성을 입력하세요(종료라고 하면 종료)");
			serch=sc.nextLine();
			
			if(serch.equals("종료"))
			{
				System.out.println("종료 합니다.");
			break;
			}
			
			flag=false;
			
			cnt=0;
			
			for(int i=0;i<names.length;i++)
			{
				if(names[i].startsWith(serch))
				{
					cnt++;
					System.out.println(i+":"+names[i]);
					flag=true;
				}	
			}
			
			if(flag)
				System.out.println("\t총"+cnt+"명 검색");
			else //!flag
				System.out.println(serch+"씨 성을 가진 사람은 없습니다");
		
			
		}
		
		

	}

}
