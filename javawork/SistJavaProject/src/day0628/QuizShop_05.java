package day0628;

class MyShop {
	
	private String sangpumName;
	private String ipgoday;
	private String chulgoday;
	public String getSangpumName() {
		return sangpumName;
	}
	public void setSangpumName(String sangpumName) {
		this.sangpumName = sangpumName;
	}
	public String getIpgoday() {
		return ipgoday;
	}
	public void setIpgoday(String ipgoday) {
		this.ipgoday = ipgoday;
	}
	public String getChulgoday() {
		return chulgoday;
	}
	public void setChulgoday(String chulgoday) {
		this.chulgoday = chulgoday;
	}
	
	
	//3개의 데이터를 한번에 수정할수있는 메서드
	public void setData(String name,String ipgo,String chulgo){	
		sangpumName=name;
		ipgoday=ipgo;
		chulgoday=chulgo;
	}
	
	//3개의 데이터를 한번에 출력할 수 있게 메서드
	public String getData() {
		String s="상품명: "+sangpumName+"\n 입고일: "+ipgoday+"\n 출고일: "+chulgoday;
		return s;
	}


}


public class QuizShop_05 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		MyShop in1=new MyShop();
		in1.setData("키보드", "2023-06-01", "2023-06-20");
		System.out.println(in1.getData());
		
		MyShop in2=new MyShop();
		in2.setData("모니터", "2023-06-04", "2023-06-23");
		System.out.println(in2.getData());
	}

}
