package day0622;

public class GaroGugu_06 {

	public static void main(String[] args) {
		// 가로방향으로 구구단을 출력하세요.
		// [2단] [3단] [4단].....[9단]
		
		//제목[] 반복
		
		for(int dan=2;dan<=9;dan++)
		{
			System.out.print("["+dan+"단]\t");
		}
		System.out.println();
		
		
		for(int j=1;j<=9;j++) {
			for(int dan=2;dan<=9;dan++)
			{
			  System.out.printf("%d*%d =%2d\t",dan,j,dan*j);
			  
			}
			System.out.println();
		}
	}
	
}
