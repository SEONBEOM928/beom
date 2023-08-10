package day0627;

public class QuizMain_10 {

	/* **상품입고**
	 --------------
	 입고된 상점: 롯데마트
	 --------------
	 상품명: 딸기
	 가격: 10000원
	 수량: 5팩
	 -------------
	 상품명: 초코파이
	 가격: 5000원
	 수량: 10상자
	 -------------
	 상품명: 요거트
	 가격: 25000원
	 수량: 100팩
	 */
	
	public static void main(String[] args) {
		
		System.out.println("**상품입고**");
		System.out.println("-------------");
		System.out.println("입고된 상점: "+Quiz_10.SHOPNAME);
		System.out.println("-------------");
		
		Quiz_10 q1=new Quiz_10();
		q1.setsangPum("딸기");
		q1.setdan(10000);
		q1.setsu(5);
		
		System.out.println("상품명: "+q1.getsangpum());
		System.out.println("가격: "+q1.getdan());
		System.out.println("수량: "+q1.getsu());
		System.out.println("-------------");
		
		Quiz_10 q2=new Quiz_10();
		q2.setsangPum("초코파이");
		q2.setdan(5000);
		q2.setsu(10);
		
		System.out.println("상품명: "+q2.getsangpum());
		System.out.println("가격: "+q2.getdan());
		System.out.println("수량: "+q2.getsu());
		System.out.println("-------------");
		
		Quiz_10 q3=new Quiz_10();
		q3.setsangPum("요거트");
		q3.setdan(2500);
		q3.setsu(100);
		
		System.out.println("상품명: "+q3.getsangpum());
		System.out.println("가격: "+q3.getdan());
		System.out.println("수량: "+q3.getsu());

	}

}
