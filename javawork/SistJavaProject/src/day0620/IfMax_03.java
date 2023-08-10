package day0620;

import java.util.Scanner;

public class IfMax_03 {

	public static void main(String[] args) {
		// 2개의 숫자를 입력받았을때 Max,Min값 구해보기
		Scanner sc=new Scanner(System.in);
		int x,y,max;
		
		System.out.println("**두개의 숫자를 입력하시오**");
		x=sc.nextInt();
		y=sc.nextInt();
		
		System.out.println("입력한 두수: "+x+","+y);
		
		/* if(x>y)
			max=x;
		else
			max=y; */
		
		//동일한 결과 삼항연산자
		max=(x>y)?x:y;
		
		//출력
		System.out.println("두수중에 더 큰값은"+max+"입니다");

		//삼항연산자를 이용하여 첫번째수가 더 작다 or 더크다
		
		
		System.out.println(x>y?"첫번째 수가 더 크다":"첫번째 수가 더 작다");
	}

}
