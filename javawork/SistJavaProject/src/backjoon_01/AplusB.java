package backjoon_01;

import java.util.Scanner;

public class AplusB {

	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		
		int count,A,B,tot,C;

		System.out.println("횟수를 입력하시오");
		count =sc.nextInt();
		
		if(0<A&&B<10) {
		System.out.println("A와 B를 입력하시오");
		for(int i=1;i<=count;i++) {
			A=sc.nextInt();
			B=sc.nextInt();
			tot=A+B;
			System.out.println(tot);
			}
		
		}
		if(A<0||A>=10||B<0||B>=10)
		{
			System.out.println("잘못입력했습니다");
			return; 
		}
	
		System.out.println(A+B);
		}
		
		
	}

}
