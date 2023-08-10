package day0627;

import javax.swing.plaf.synth.SynthOptionPaneUI;

public class QuizMain_09 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		System.out.println("\t[쇼핑목록]");
		
		System.out.println("쇼핑장소: "+Quiz_09.SHOPNAME);
		
		Quiz_09 q1=new Quiz_09();
		q1.setSangName("손선풍기");
		q1.setPrice(25000);
		
		String sang=q1.getSangName();
		int pri=q1.getPrice();
		
		System.out.println("상품명: "+sang);
		System.out.println("가격: "+pri+"원");
		
		System.out.println("========================");
		System.out.println("쇼핑장소: "+Quiz_09.SHOPNAME);

		Quiz_09 q2=new Quiz_09();
		q2.setSangName("핸드폰충전기");
		q2.setPrice(35000);

		System.out.println("상품명: "+q2.getSangName());
		System.out.println("가격: "+q2.getPrice()+"원");
		
		System.out.println("========================");
		System.out.println("쇼핑장소: "+Quiz_09.SHOPNAME);

		Quiz_09 q3=new Quiz_09();
		q3.setSangName("이어폰");
		q3.setPrice(70000);

		System.out.println("상품명: "+q3.getSangName());
		System.out.println("가격: "+q3.getPrice()+"원");
		
		
		
		
		
		
//		emart in1=new emart();
//		
//		in1.setsangName("손선풍기");
//		in1.setsangpri(25000);
//		
//		String name=in1.getsangName();
//		int pri=in1.getsangpri();
//		
//		System.out.println("[쇼핑목록]");
//		System.out.println("목록1");
//		System.out.println("상품명: "+name);
//		System.out.println("가격: "+pri);
//		
//		emart in2=new emart();
//
//		
//		in2.setsangName("핸드폰충전기");
//		in2.setsangpri(30000);
//		
//		name=in2.getsangName();
//		pri=in2.getsangpri();
//		
//
//		
//		System.out.println("[쇼핑목록]");
//		System.out.println("목록1");
//		System.out.println("상품명: "+name);
//		System.out.println("가격: "+pri);
//		
//		emart in3=new emart();
//		
//		in3.setsangName("이어폰");
//		in3.setsangpri(70000);
//		
//		name=in3.getsangName();
//		pri=in3.getsangpri();
//		
//		
//		
//		System.out.println("[쇼핑목록]");
//		System.out.println("목록1");
//		System.out.println("상품명: "+name);
//		System.out.println("가격: "+pri);
		
		
		
		
		
		
		
		
		
	}

}
