package day0619;

public class IfTest_14 {

	public static void main(String[] args) {
		
		/* int n=10;
		
		if(n>=100) {
			System.out.println("n은 100보다 크거나 같다");
		    System.out.println("***");
		}
			System.out.println("프로그램종료!!!"); */
		
        
		//i가 홀수인지 짝수인지 구하기
		/* int i=10;
		
		if(i%2==1)
			System.out.println(i+"는 홀수");
		else
			System.out.println(i+"는 짝수"); */
		
		//if문을 이용해서 학점구하기 ( 90이상이면 A, 80이상이면 B, 70이상이면 C, 60이상이면 D, 60미만 F)
		int score=68;
		String grade;
		
	   /* if(score>=90)
	    	grade="A";
	    
	    else if(score>=80)
	    	grade="B";
	    
	    else if(score>=70)
	    	grade="C";
	    
	    else if(score>=60)
	    	grade="D";
	    
	    else
	    	grade="F"; */
	    	
	    //학점을 삼항연산자를 이용하여 구해보기
		
		grade=(score>=90)?"A":
			 (score>=80)?"B":
				(score>=70)?"C":
					(score>=60)?"D":"F";
						
		
		System.out.println("학점은 "+grade+"입니다");
		    
		    
	}
}
		    
		        
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		 
