package day0626;

import java.util.Scanner;

public class QuizFind_05 {

	public static void main(String[] args) {
		/* 숫자를 입력 받아서 배열의 몇번째에 있는지 출력하고 없을경우 없습니다 라고 출력 
		  (0이면 종료)
		   입력값: 11
		   		11은 2번째에 있어요!
		   입력값: 100
		   		100은 없습니다. 
		   입력값: 0
		   		종료합니다(프로그램종료)*/
		
		Scanner sc=new Scanner(System.in);
		
		int [] arrNums= {23,11,32,48,22,5,4,51,7,31,26,19};
		
		int num;
		boolean find;
		
		while(true)
		{
			System.out.print("입력값: ");
			num=sc.nextInt();
			
			find=false;
						
			if(num==0)
			{
				System.out.println("종료합니다.");
				break;
			}
			
			for(int i=0;i<arrNums.length;i++)
			{
				if(num==arrNums[i])
				{
					find=true;
					System.out.println(num+"은 "+(i+1)+"번째에 있어요!");
				}
			}
			if(!find)
				System.out.println(num+"은 없습니다.");
			
			
			
		}
		
		}

	}


