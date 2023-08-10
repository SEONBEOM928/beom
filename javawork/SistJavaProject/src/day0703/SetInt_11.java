package day0703;

import java.util.HashSet;

public class SetInt_11 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		HashSet<Integer> set1=new HashSet<Integer>();
		
		set1.add(1);
		set1.add(2);
		set1.add(4);
		set1.add(2);
		set1.add(3);
		
		System.out.println("갯수: "+set1.size());
		
		System.out.println("출력3_for");
		Object [] ar=set1.toArray();
		for(int i=0;i<ar.length;i++)
		{
			System.out.printf("%5d",ar[i]);
		}
		
	}

}
