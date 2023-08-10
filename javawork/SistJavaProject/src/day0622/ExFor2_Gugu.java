package day0622;

public class ExFor2_Gugu {

	public static void main(String[] args) {
		// 2~9단까지 구구단
//		for(int dan=2;dan<=9;dan++)
//		{
//			for(int j=1;j<=9;j++)
//			{
//				System.out.println(dan+"X"+j+"="+(dan*j));
//			}
//			System.out.println();
//		}
      
		
		//구구단으로 break연습
		//반복문앞에 이름을 붙히고 해당이름을 break처리하면 두개이상의 반복문을 빠져나가는게 가능하다
		
		for(int dan=2;dan<=9;dan++)
		{
			for(int j=1;j<=9;j++)
			{	
				if(j==5)
					break;
				
				System.out.println(dan+"*"+j+"="+dan*j);
			}
			System.out.println();
		}
	}

}
