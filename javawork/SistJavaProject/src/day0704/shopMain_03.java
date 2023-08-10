package day0704;
/*
 1.상품입고   2.상품재고   9.종료
 1
 상품명? 바나나
 수량? 10
 가격? 1000
 2
 번호  상품명  수량  가격  총가격
 1	  바나나  10   1000  10000
 */

import java.util.List;
import java.util.Scanner;
import java.util.Vector;

public class shopMain_03 {

	List<shop> list=new Vector<shop>();
	
	public void inputBoard()
	{
		Scanner sc=new Scanner(System.in);
		String sangName;
		int su,dan;
		
		System.out.println("상품명?");
		sangName=sc.nextLine();
		System.out.println("수량?");
		su=Integer.parseInt(sc.nextLine());
		System.out.println("가격?");
		dan=Integer.parseInt(sc.nextLine());
				
		shop data=new shop();
		//shop data=new shop(sangName, su, dan); 로 써도 가능.
		data.setSangName(sangName);
		data.setSu(su);
		data.setDan(dan);
		list.add(data);
	}
	
	public void writeBoard()
	{
		System.out.println("번호\t상품명\t수량\t가격\t총가격");
		
		for(int i=0;i<list.size();i++)
		{
			shop s=list.get(i);
			System.out.println((i+1)+"\t"+s.getSangName()+"\t"+s.getSu()+"\t"+s.getDan()+"\t"+(s.getDan()*s.getSu()));
			
		}
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		shopMain_03 sm=new shopMain_03();
		Scanner sc=new Scanner(System.in);
		
		int n;
		
		while(true)
		{
			System.out.println("1.상품입고  2.상품재고  9.종료");
			n=Integer.parseInt(sc.nextLine());
			
			if(n==1)
				sm.inputBoard();
			else if(n==2)
				sm.writeBoard();
			else if(n==9)
			{
				System.out.println("프로그램 종료");
				break;
			}
			else
				System.out.println("잘못입력했어요");
		}
	}

}
