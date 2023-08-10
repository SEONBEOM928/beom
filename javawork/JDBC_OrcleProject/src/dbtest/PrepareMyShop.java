package dbtest;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

import oracle.jdbc.driver.InternalFactory;

public class PrepareMyShop {

	DBConnect db=new DBConnect();
	Scanner sc=new Scanner(System.in);
	
	//insert
	public void insertMyshop()
	{
		//Connection
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		System.out.println("상품명은?");
		String sang=sc.nextLine();
		System.out.println("수량?");
		int su=Integer.parseInt(sc.nextLine());
		System.out.println("가격?");
		int dan=Integer.parseInt(sc.nextLine());
		
		//sql..PreparedStatement는 미완의 sql문을 작성
		String spl="insert into myshop values (seq1.nextval,?,?,?,sysdate)";
		
		try {
			pstmt=conn.prepareStatement(spl);
			
			//?를 순서대로 바인딩
			pstmt.setString(1, sang);
			pstmt.setInt(2, su);
			pstmt.setInt(3, dan);
			
			//업데이트
			int a=pstmt.executeUpdate();
			
			if(a==1)
				System.out.println("인서트 성공!!!");
			else
				System.out.println("인서트 실패!!!");
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	//select
	public void selectMyshop()
	{
		System.out.println("시퀀스\t상품명\t개수\t단가\t입고날짜");
		System.out.println("===========================");
		
		//요청한 sql문을 String에 저장
		String sql="select * from myshop order by shopnum";
		
		//Connection
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		conn=db.getConnection();
		
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			
			//2개이상일경우는 while문
			//resultset객체의 next이용해서 행을 선택하고 get메서드를 이용해서 테이블의 컬럼값을 얻는다.
			while(rs.next())
			{
				System.out.println(rs.getInt("shopnum")
						+"\t"+rs.getString("sangpum")
						+"\t"+rs.getInt("su")
						+"\t"+rs.getInt("price")
						+"\t"+rs.getDate("ipgo"));
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, null, conn);
		}
		
	}
	
	//delete.. 시퀀스번호입력 후 삭제
	public void deleteMyshop()
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		System.out.println("삭제할 시퀀스?");
		int num=Integer.parseInt(sc.nextLine());
		
		String sql="delete from myshop where shopnum=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			//?바인딩
			pstmt.setInt(1, num);
			
			int a=pstmt.executeUpdate();
			
			if(a==1)
			System.out.println("**삭제성공**");
			else
				System.out.println("**삭제실패**");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	//수정할 시퀀스가 존재?
	public boolean isData(String shopnum)
	{
		boolean b=false;
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from myshop where shopnum=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			//?
			pstmt.setString(1, shopnum);
			rs=pstmt.executeQuery();
			
			//if
			if(rs.next())
				b=true;
			else
				b=false;
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		
		return b;
	}
	//수정..시퀀스 입력 후 수정할 데이터 수정
	public void updateMyShop()
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		System.out.println("수정할 시퀀스 번호?");
		String num=sc.nextLine();
		
		//여기서 시퀀스가 없다면 종료
		if(!isData(num))
		{
			System.out.println("해당 번호는 존재하지 않습니다");
			return;
		}
		
		System.out.println("수정할 상품명?");
		String sang=sc.nextLine();
		System.out.println("수정할 수량은?");
		int su=Integer.parseInt(sc.nextLine());
		System.out.println("수정할 가격은?");
		int price=Integer.parseInt(sc.nextLine());
		
		//sql
		String sql="update myshop set sangpum=?,su=?,price=? where shopnum=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			//4개순서대로 바인딩
			pstmt.setString(1, sang);
			pstmt.setInt(2, su);
			pstmt.setInt(3, price);
			pstmt.setString(4, num);
			
			//업데이트
			pstmt.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	//검색
	public void searchSangpum()
	{
		System.out.println("검색할 상품명(일부)");
		String sang=sc.nextLine();
		
		String sql="select * from myshop where sangpum like ?";
		System.out.println(sql);
		
		System.out.println("시퀀스\t상품명\t수량\t단가\t날짜");
		System.out.println("-----------------------------");
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null; // ? 했으니까(?)
		ResultSet rs=null;
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+sang+"%");
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				System.out.println(rs.getInt("shopnum")
						+"\t"+rs.getString("sangpum")
						+"\t"+rs.getInt("su")
						+"\t"+rs.getInt("price")
						+"\t"+rs.getDate("ipgo"));
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		
	}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		PrepareMyShop shop=new PrepareMyShop();
		Scanner sc=new Scanner(System.in);
		int n;
		
		while(true)
		{
			System.out.println("****상품입고****");
			System.out.println("1.상품추가  2.상품삭제  3.상품수정  4.상품전체출력 5.상품검색  9.종료");
			n=Integer.parseInt(sc.nextLine());
			
			if(n==1)
				shop.insertMyshop();
			else if(n==9)
			{
				System.out.println("종료합니다");
				break;
			}
			else if(n==4)
				shop.selectMyshop();
			else if(n==2)
				shop.deleteMyshop();
			else if(n==3)
				shop.updateMyShop();
			else if(n==5)
				shop.searchSangpum();
		}
	}

}
