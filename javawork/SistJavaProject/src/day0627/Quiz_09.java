package day0627;

/* 
  [쇼핑목록]
  쇼핑장소: 이마트
  목록1 
  상품명: 손선풍기
  가격: 25000원
  
  목록2
  상품명: 핸드폰충전기
  가격: 30000원
 
  목록3
  상품명: 이어폰
  가격: 70000원		*/

//class emart {
//	private String name;
//	private int pri;
//	
//	public void setsangName(String name)
//	{
//		this.name=name;
//	}
//	
//	public void setsangpri(int pri)
//	{
//		this.pri=pri;
//	}
//	
//	public String getsangName()
//	{
//		return name;
//	}
//	
//	public int getsangpri()
//	{
//		return pri;
//	}
//}


public class Quiz_09 {

	//변수선언
	static String SHOPNAME="이마트";
	private String sangName; // null
	private int price; //0
	
	//set메서드
	public void setSangName(String name)
	{
		sangName=name;
	}
	public void setPrice(int price)
	{
		this.price=price;
	}
	
	//get메서드
	public String getSangName()
	{
		return sangName;
	}
	
	public int getPrice()
	{
		return price;
	}
	
}
