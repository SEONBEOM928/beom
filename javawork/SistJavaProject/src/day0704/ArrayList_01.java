package day0704;

import java.util.ArrayList;

public class ArrayList_01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String[] flowers= {"장미","후리지아","다알리아","수국"};
		
		//객체 삽입,삭제할수있는 컨테이너 클래스 생성
		ArrayList<String> list=new ArrayList<String>();
		
		//데이터 담기
		for(String f:flowers)
			list.add(f); //삽입
		
		System.out.println("size: "+list.size());
		
		System.out.println("#출력1_for");
		for(int i=0;i<list.size();i++)
			System.out.println(list.get(i));
		
		System.out.println("#출력2_for~each");
		for(String a:list)
			System.out.println(a);
	}

}
