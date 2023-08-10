package day0621;

public class QuizFor_09 {

	public static void main(String[] args) {
		//Q.1 2 4 5 7 8 10 continue이용해서 출력
		
		
		for(int i=1;i<=10;i++)
		{
			if(i%3==0)
				continue;
			System.out.print(i+" ");
		}
		System.out.println();
	
		/* Q2 **continue 이용할것
		   홀수값: 1
		   홀수값: 3
		   홀수값: 5
		   홀수값: 7
		   홀수값: 9 */
	
		for(int i=1;i<=9;i++)
		{
			if(i%2==0)
				continue;
			System.out.println("홀수값: "+i);
		}
		
		// 1~100까지중에서 홀수의 합을 구하시오
		
		int total=0;
		int total2=0;
		
		for(int i=1;i<=100;i++)
		{
			if(i%2==1)
			total+=i;
			else
			total2+=i;
		}
			System.out.println("홀수의 합"+total);		
			System.out.println("짝수의 합"+total2);	

		//while(true)문을 이용해서 1~100사이의 짝수합 구하기
		
		int i=1;
		int sum=0;
		
		while(true)
		{
			i++;
			if(i%2==0)
			sum+=i;
			
			if(i>=100)
			break;
		}
		System.out.println("짝수 합: "+sum);
		
		
	}

}
