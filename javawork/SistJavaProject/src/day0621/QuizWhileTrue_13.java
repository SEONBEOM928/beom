package day0621;

import java.util.Scanner;

public class QuizWhileTrue_13 {

	public static void main(String[] args) {
		/* 
		  점수를 반복해서 입력하다가 q나 Q를 입력하면
		  while문을 빠져나온뒤 총갯수,총점,평균을 출력하시오
		  */
       Scanner sc=new Scanner(System.in);
       
       int i; // 점수
       String jum;
       int cnt=0; //갯수
       int sum=0; // 총점
       double avg; // 평균
       
       while(true)
       {
    	   System.out.println("점수입력(종료: q또는 Q)");
    	   
    	   jum=sc.nextLine();
           
    	   //종료
//    	   if(jum.equals("q")||jum.equals("Q"))
//    	   if(jum.equalsIgnoreCase("q")
    	   if(jum.charAt(0)=='q'||jum.charAt(0)=='Q') // 변수값 첫번째칸이 q또는Q 일때
    		   break;
        		            
           cnt++;
           sum+=Integer.parseInt(jum); //정수로 변환 후 합계변수에 누적
       }
       
       avg=(double)sum/cnt;
       System.out.println("총 갯수는 "+cnt);
       System.out.println("총 점수는 "+sum);
       System.out.println("평균"+avg);
        		  
	}

}
