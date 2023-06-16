package day0616;

public class QuizDataType_10 {

	public static void main(String[] args) {
		/* 매개변수(arg)를 이용하여 출력해보세요
		 * [시험결과]
		 * Java=88,Jsp=77,Spring=99
		 * 총점: 264 점
		 * 평균: 88.00 점*/
		
		int Java=Integer.parseInt(args[0]); 
		int Jsp=Integer.parseInt(args[1]); 
		int Spring=Integer.parseInt(args[2]); 
		
		int sum=Java+Jsp+Spring;
		
		double avg=sum/3;
				
		System.out.println("[시험결과]");
		System.out.println("Java="+Java+",Jsp="+Jsp+",Spring="+Spring);
		System.out.printf("총점: %d\n",sum);
		System.out.printf("평균: %.2f",avg);
		
		

	}

}
