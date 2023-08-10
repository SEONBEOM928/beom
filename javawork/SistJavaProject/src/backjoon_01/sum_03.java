package backjoon_01;

import java.util.Scanner;

public class sum_03 {

	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		
		int n,a;
		int total=0;
		
		System.out.println("n값을 입력하시오.");
		n=sc.nextInt();
		
		for(a=1;a<=n;a++)
		{
			total+=a;
		}
			System.out.println(total);
			
	}
}
