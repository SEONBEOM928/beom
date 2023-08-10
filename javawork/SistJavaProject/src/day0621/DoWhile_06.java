package day0621;

public class DoWhile_06 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int i=1;
		
		System.out.println("while문 결과");
		//조건이 선조건..참일동안 반복
		
		while(i<5)
		{
			//출력후 증가
			System.out.println(i++);
			
			//System.out.println(i);
			//i++ 위와 같음
		}
		
		System.out.println("do~while문 결과");
		//후조건:조건 나중에온다. 조건이 안맞아도 1번은 실행
		
		i=1;
		
		do {
			//출력후 증가
			System.out.println(i++);
		}while(i>5);
	}

}
