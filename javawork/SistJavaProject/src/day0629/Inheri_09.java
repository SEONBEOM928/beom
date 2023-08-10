package day0629;

class Work{
	
	public void process()
	{
		System.out.println("작업중!!!!");
	}
}
/////////////////////////////
class Food1 extends Work{
	
	@Override
	public void process() {
		// TODO Auto-generated method stub
		super.process();
		System.out.println("***음식을 합니다***");
	}
}

/////////////////////////////
class Clean extends Work{
	@Override
	public void process() {
		// TODO Auto-generated method stub
		super.process();
		System.out.println("***청소를 합니다***");
}	
}
////////////////////////////
class Study extends Work{
	
	@Override
	public void process() {
		// TODO Auto-generated method stub
		super.process();
		System.out.println("***공부를 합니다***");
	}
}


public class Inheri_09 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//일반적인 생성.. 메서드호출
		Food1 food=new Food1();
		Clean clean=new Clean();
		Study study=new Study();
		
		food.process();
		clean.process();
		study.process();
		
		System.out.println();
		
		//다형성..하나의 변수로 호출시 누가생성되었느냐에 따라 그 기능이 달라짐
		System.out.println("**다형성 출력중**");
		Work work=null; //초기값 안줘도 상관없음
		
		work=new Food1();
		work.process();
		
		work=new Clean();
		work.process();
		
		work=new Study();
		work.process();
		
		
	}

}
