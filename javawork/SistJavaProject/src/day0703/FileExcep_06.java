package day0703;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

//score.txt를 읽고 개수,총점,평균까지 구해서 출력
public class FileExcep_06 {

	public static void scoreRead()
	{
		String file="C:\\sist0615\\file\\score.txt";
		FileReader op=null;
		BufferedReader rd=null;
		int cnt=0;
		int sum=0;
		double avg=0;
		
		try {
			op=new FileReader(file);
			System.out.println("파일을 열었어요");
			rd=new BufferedReader(op);
			
			while(true)
			{
				String s=rd.readLine();
				//더이상 값없으면 종료
				if(s==null)
					break;
				
				cnt++;//읽은 횟수
				
				sum+=Integer.parseInt(s);//합게	
				System.out.println(s);
			}
			//평균구하기
			avg=(double)sum/cnt;
			System.out.println("개수: "+cnt);
			System.out.println("총점: "+sum);
			System.out.printf("평균: %.2f\n",avg);
			
			} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO: handle exception
		}
			finally {
				try {
					op.close();
					rd.close();
					
				} catch (IOException e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			
			}
		
		
	}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		scoreRead();
		System.out.println("메모 정상종료");
		
	}

}
