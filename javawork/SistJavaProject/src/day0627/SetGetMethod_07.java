package day0627;

class Student {
	
	private String name; //null
	private int age; //0  private이므로 메소드를 만들지않으면 출력 할 수 없다.
	
	//setter_method
	//인스턴스변수에 저장된 데이터를 수정할 목적(set변수명)
	//저장,수정 용도이므로 리턴값(결과값)이 없다(->void가 무조건 들어감)
	public void setName(String name)
	{
		this.name=name;
	}
	
	public void setAge(int age)
	{
		this.age=age;
	}

	
	//getter_method
	//인스턴스변수에 저장된 데이터를 조회할 목적으로 사용(get변수명)
	//데이터를 얻는 목적이므로 호출데이터를 넘겨줄필요가 없으므로 인자값(파라메타값)이 없다
	//실행결과를 돌려주므로 "return 결과값" 으로 지정
	public String getName()
	{
		return name;
	}
	
	public int getAge()
	{
		return age;
	}
}
/////////////////////////////
public class SetGetMethod_07 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//1.객체생성
		Student stu1=new Student();
		
		//2. 참조변수명으로 set메서드호출
		stu1.setName("최지우");
		stu1.setAge(33);
		
		
		//3.get메서드를 통한 값얻기
		String name=stu1.getName();
		int age=stu1.getAge();
		
		//출력
		System.out.println(name+""+age);
	}

}
