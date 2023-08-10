package day0627;

public class Quiz_10 {

	//멤버변수선언
	private String sangpum; // 상품명
	int su; //수량
	int dan; //단가
	static String SHOPNAME="롯데마트"; //상점
	
	public void setsangPum(String name)
	{
		sangpum=name;
	}
	public void setdan(int dan)
	{
		this.dan=dan;
	}
	public void setsu(int su)
	{
		this.su=su;
	}
	
	public String getsangpum()
	{
		return sangpum;
	}
	public int getdan()
	{
		return dan;
	}
	public int getsu()
	{
		return su;
	}
	
	
}
