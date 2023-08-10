package day0628;

class MyPersonInfo{
	
	private String name;
	private String blood;
	private String age;
	
	public MyPersonInfo(String name,String blood,String age) {
		this.name=name;
		this.blood=blood;
		this.age=age;
	}
	
	//제목
	public static void title()
	{
		System.out.println("이름\t혈액형\t나이");
		System.out.println("----------------------");
	}
	
	//출력문
	public void getInfo()
	{
		System.out.println(name+"\t"+blood+"\t"+age+"세");
	}
	
}

//////////////////
public class ArrObject_10 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		MyPersonInfo [] person= {new MyPersonInfo("김선범", "O", "27"),new MyPersonInfo("홍길동", "A", "17"),new MyPersonInfo("서강준", "AB", "48")};
		
		System.out.println("총 "+person.length+"명의 정보 출력");
		MyPersonInfo.title();
		
		for(int i=0;i<person.length;i++)
		{	
			person[i].getInfo();
			
		}
		System.out.println();
		for(MyPersonInfo info:person)
			info.getInfo();
	}

}
