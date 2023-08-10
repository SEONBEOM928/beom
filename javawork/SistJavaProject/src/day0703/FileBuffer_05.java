package day0703;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class FileBuffer_05 {

	public static void read()
	{
	String file="C:\\sist0615\\file\\monday1.txt";
	FileReader fd=null;
	BufferedReader bd=null;
	try {
		fd = new FileReader(file);
		System.out.println("파일을 열었어요");
		bd=new BufferedReader(fd);
		
		while(true)
		{
			String s=bd.readLine();
			
			if(s==null)
			break;
			System.out.println(s);
			
		}
		
	} catch (FileNotFoundException e) {
		// TODO Auto-generated catch block
		//printStackTrace();
		System.out.println("파일이 없어요: "+e.getMessage());
	} catch (IOException e) {
		// TODO Auto-generated catch block
	} finally {
		try {
			fd.close();
			bd.close();
		} catch (IOException e) {
	
			e.printStackTrace();
	}
		
		
  }
	
	
}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		read();
		System.out.println("메모 정상종료");
	}

}
