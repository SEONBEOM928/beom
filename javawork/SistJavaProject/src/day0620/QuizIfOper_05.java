package day0620;

import java.util.Scanner;

public class QuizIfOper_05 {

	public static void main(String[] args) {
		/* 
		 상품명? 아이패드
		 수량? 3
		 가격? 500000
		 ==================
		 아이패드 3개는 총 1500000 원 입니다
		 3개이상은 10프로 DC가 됩니다
		 DC된 총금액:1350000원*/
		
		Scanner sc=new Scanner(System.in);
		
		String name;
		int su,pri;
		double dc,tot,tot2;
		
		System.out.print("상품명? ");
		name=sc.nextLine();
		System.out.print("수량? ");
		su=sc.nextInt();
		System.out.print("가격? ");
		pri=sc.nextInt();
		
		dc=0.9;
		tot=su*pri;
		
	    System.out.println("=================");
	    System.out.println("아이패드 "+su+"개는 총"+(int)tot+" 원 입니다");
	    
	    
	 
	    		
	   if(su>=3) {
	    	System.out.println("3개 이상은 10프로 DC가 됩니다");
	    	System.out.println("DC된 총금액: "+(int)(tot*dc));
	    	
	    	
	    	
	    }
	} 
	    
	    
	    


}
