package day0621;

import java.util.Scanner;

public class ScannerFor_11 {

	public static void numSum()
	{
		//합계를 구할숫자는?  100
		//1부터 100까지의 합은 5050 입니다
		
		Scanner sc=new Scanner(System.in);
		
		int sum=0;
		int x;
		
		System.out.print("합계를 구할숫자는?  ");
		x=sc.nextInt();
		
		for(int i=1;i<=x;i++)
		{
			sum+=i;
		}
		System.out.println("1부터 "+x+"까지의 합은 "+sum+"입니다");	
		
				
	}
	
	public static void quizFact()
	{
		//팩토리얼을 구할 숫자를 입력
		//5!=120
		Scanner sc=new Scanner(System.in);
		
		int x;
		int fac=1;
		
		System.out.println("팩토리얼을 구할 숫자를 입력 ");
		x=sc.nextInt();
		
		
		
		for(int i=1;i<=x;i++)
		{
			fac*=i;
		}
		System.out.println(x+"!="+fac);
	}
	
	public static void factorialTest()
	{
		//1!=1
		//2!=2
		//3!=6
		
		//10!의 출력
		int result=1;
		for(int i=1;i<=10;i++)
		{
			result*=i;
			System.out.println(i+"!="+result);
		}
		
	}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//numSum();
		//factorialTest();
		quizFact();
	}

}
