package day0627;

public class InfoMain_08 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Info_08 in1=new Info_08("이수진", 22, "서울시 강남구");
		
		//getMethod 변수지정
		String name=in1.getstuName();
		int age=in1.getAge();
		String addr=in1.getaddr();
		
		System.out.println("이름은 "+name+"이고 나이는"+age+"세 이며 주소는"+addr);
		
		Info_08 in2=new Info_08("김영",22,"서울시 은평구");
		System.out.println("이름은 "+in2.getstuName()+"이고 나이는"+in2.age+"세 이며 주소는"+in2.addr);
		
		//디폴트 생성자로 생성
		Info_08 in3=new Info_08();
		System.out.println("이름: "+in3.getstuName()+"\n나이: "+in3.getAge()+"\n주소: "+in3.getaddr());	
		
		
	}

}
