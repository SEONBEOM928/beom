package day0623;

import java.util.Scanner;

public class QuizArrFind_13 {

	public static void main(String[] args) {
		// 이름을 입력해서 없으면 없다고, 있으면 몇번째인지 출력

		Scanner sc=new Scanner(System.in);
		String name;
		boolean flag;
		
		String [] stuNames= {"이성신","이민규","박병주","최성현","김영준","강연주","최진평","고은비","송주영"};

		while(true)
		{
		System.out.println("검색할 이름을 입력하세요. (끝이라고 쓰면 종료)");
		name=sc.nextLine();
	
		flag=false;
		 
		if(name.equals("끝"))
		{
			System.out.println("종료합니다.");
			break;
		}
		
		for(int i=0;i<stuNames.length;i++)
		{
		if(name.equals(stuNames[i]))
			{
				flag=true;
				System.out.println((i+1)+"번째에 검색되었습니다");
			}
		}
		
		if(!flag)
		{
			System.out.println("검색한 이름은 명단에 없습니다.");
		}
		
		
	    }

}
}
