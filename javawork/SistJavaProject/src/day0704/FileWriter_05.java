package day0704;

import java.io.FileWriter;
import java.io.IOException;
import java.util.Date;

public class FileWriter_05 {

	public static void fileWrite()
	{
		FileWriter fw=null;
		String fileName="C:\\sist0615\\file\\filetest1.txt";
	
		try {
			fw=new FileWriter(fileName); //파일새로 생성(같은이름이있어도 새로생성)
			
			//파일에 내용 추가
			fw.write("Have a Nice Day!!!\n");
			fw.write(new Date().toString());
			System.out.println("===파일저장 성공=====");
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				fw.close();
			}catch (IOException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	
	public static void filewrite2() {
	
		FileWriter fw=null;
		String fileName="C:\\sist0615\\file\\fileTest2.txt";
		
		try {
		fw=new FileWriter(fileName, true); //추가모드
		
		fw.write("내이름은 홍길동\n");
		fw.write("================");
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			try {
				fw.close();
			}catch (IOException e) {
			e.printStackTrace();
			}
		}
				
				
				
	}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		fileWrite();
		filewrite2();
	}

}
