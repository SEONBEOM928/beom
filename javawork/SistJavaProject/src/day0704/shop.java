package day0704;

public class shop {

	private String sangName; //상품명
	private int su; //수량
	private int dan; //가격
	
	public shop() {
		// TODO Auto-generated constructor stub
	}
	
	public shop(String s,int su,int dan) {
		this.sangName=s;
		this.su=su;
		this.dan=dan;	
	}

	public String getSangName() {
		return sangName;
	}

	public void setSangName(String sangName) {
		this.sangName = sangName;
	}

	public int getSu() {
		return su;
	}

	public void setSu(int su) {
		this.su = su;
	}

	public int getDan() {
		return dan;
	}

	public void setDan(int dan) {
		this.dan = dan;
	}
	
}
