package day0627;

class ConstA{
	
	int num=0;
	
	//디폴트생성자...명시적인 생성자를 만들면 디폴트 생성자는 자동생성되지않는다
	//필요하면 만들어준다
	public ConstA() {
		num=10;
		System.out.println("디폴트 생성자");
	}
	
	
	//인자있는생성자
	public ConstA(int num) {
		this.num=num;
		System.out.println("생성자 호출");
	}
	
	//메서드
	public int getNumber() {  //void형이 아니면 반드시 int값에 맞게 return 해주어야함!
		num=50;
		
		return num;
	}
}



///////////////////////
public class ConsTest_05 {

	public static void main(String[] args) {
		//명시적생성자(인자값으로 num을 보낸 생성자)
		ConstA ca1=new ConstA(30);
		System.out.println(ca1.num);
		
		//디폴트생성자
		ConstA ca2=new ConstA();
		System.out.println(ca2.num);
		
		//메서드 호출
		ConstA ca3=new ConstA();
		System.out.println(ca3.getNumber());
		
		
	}

}
