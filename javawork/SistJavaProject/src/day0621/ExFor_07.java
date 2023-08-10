package day0621;

public class ExFor_07 {

	public static void main(String[] args) {
		 //초기값이 조건안맞으면 한번도 반복안됨
		for(int i=5;i<=1;i++)
		{
			System.out.println(i);
		}
		
		int i;
	
		for(i=1;i<=10;i++)
			System.out.print(i+" ");
		System.out.println("\n빠져나온후의 i값: "+i);
		
		
		int a=10;
		for(;a<=50;a+=5) //초기값을 반복문바깥에서 주었을경우 생략가능(;은 써야함)
			System.out.print(a+" ");
		System.out.println("\n빠져나온후의 a값: "+a);
		

		for(int n=1;n<=5;n++)
			System.out.print("Hello ");
		
		System.out.println();
		
		System.out.println("1부터 10까지의 숫자중 짝수만 가로로 출력");
		for(int b=1;b<=10;b++)
		{
			if(b%2==0)
		System.out.print(b+" ");
		}
		
		a=10;

		System.out.println("1부터 20까지의 숫자중 "+a+"의 약수를 제외하고 가로로 출력");
		for(i=1;i<=20;i++)
		{
			if(a%i==0)
				continue;
				System.out.print(i+" ");
		}
		
		System.out.println("-");
		
	}

}
