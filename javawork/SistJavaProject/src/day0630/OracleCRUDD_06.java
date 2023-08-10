package day0630;

import java.util.Scanner;

abstract class Commad{
	abstract void process();
}
////////////////////////
class Insert1 extends Commad{

	@Override
	public void process() {
		// TODO Auto-generated method stub
		System.out.println("게시물을 추가합니다");
		
	}
	
}
//////////////////////////
class List extends Commad
{

	@Override
	public void process() {
		// TODO Auto-generated method stub
		System.out.println("게시물을 조회합니다");
	}
	
}
///////////////////////////
class Modify extends Commad
{

	@Override
	public void process() {
		// TODO Auto-generated method stub
		System.out.println("게시물을 수정합니다");
	}
	
}
////////////////////////////
class Delete1 extends Commad{

	@Override
	public void process() {
		// TODO Auto-generated method stub
		System.out.println("게시물을 삭제합니다");
	}
	
}

public class OracleCRUDD_06 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc=new Scanner(System.in);
		
		Commad com=null;
		int n;
		
		while(true)
		{
			System.out.println("1.추가 2.조회 3.수정 4.삭제 9.종료");
			System.out.println("===============================");
			n=Integer.parseInt(sc.nextLine());
			
			if(n==1)
			{
				com=new Insert1();
			}
			else if(n==2)
			{
				com=new List();
			}
			else if(n==3)
			{
				com=new Modify();
			
			}
			else if(n==4)
			{
				com=new Delete1();
				
			}
			else if(n==9)
			{
				System.out.println("종료합니다");
				break;
			}
			else
			{
			System.out.println("잘못입력했어요");
			}
			
			if(n<=4)
				com.process();
	}

}
}
