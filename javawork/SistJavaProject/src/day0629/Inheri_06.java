package day0629;

/* 
 Shop클래스
 
  sangpum 상품명
  su 개수
  
  인자있는 생성자
  출력메서드 writeShop()
  -상품과 개수를 출력
 ===================
 MyCart
 
 price 가격
 Shop을 상속받아 생성자 완성
 writeshop() 메서드 오버라이드 해서 가격추가하세요
 ======================
 메인에서
 상품,개수,가격 모두있는 메서드 출력!!!!!
  */

class Shop {
	String sangpum;
	int su;

	
	public Shop(String sang, int su) {
		this.sangpum=sang;
		this.su=su;
	}
	
	public void writeShop() {
		System.out.println("상품명: "+sangpum);
		System.out.println("개수: "+su);
		
	}
	
	
}
/////////////////////////////
class MyCart extends Shop{
	int price;
	public MyCart (String sangpum, int su, int price) {
	super(sangpum,su);
	this.price=price;
	
	}
	@Override
	public void writeShop() {
		super.writeShop();
		System.out.println("상품가격: "+price);
	}
}

public class Inheri_06 {

	public static void main(String[] args) {
		
		MyCart car=new MyCart("아이폰", 3, 500000);
		car.writeShop();
	}

}
