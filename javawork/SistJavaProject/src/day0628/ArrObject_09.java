package day0628;

import day0627.student_03;

class Student{
	
	private String sname;
	private String hp;
	private int grade;
	
	//명시적 생성자
	public Student(String sname, String hp, int grade) {
		this.sname=sname;
		this.hp=hp;
		this.grade=grade;
	}
	
	//멤버값 출력데이터
	public void getData()
	{
		System.out.println("이름: "+sname);
		System.out.println("연락처: "+hp);
		System.out.println("학년: "+grade+"학년");
	}
}

/////////////////////////
public class ArrObject_09 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

//		Student [] stu=new Student[3];
//		
//		stu[0]=new Student("김선범", "010-1234-5678", 3);
//		stu[1]=new Student("최진평", "010-3333-3333", 1);
//		stu[2]=new Student("진현규", "010-1234-5678", 4);
		
		//생성하면서 바로 초기화
		Student[] stu= {new Student("김선범", "010-1234-5678", 3),new Student("최진평", "010-3333-3333", 1),new Student("진현규", "010-1234-5678", 4)};
		
		//출력
		for(int i=1;i<stu.length;i++)
		{
			stu[i].getData();
			System.out.println("-------------------");
		}
		
		//출력2
		for(Student s1:stu)
		{
			s1.getData();
			System.out.println("=============");
		}	
		
	}
}


