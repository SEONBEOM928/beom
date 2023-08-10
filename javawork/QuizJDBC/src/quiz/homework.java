package quiz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class homework {
	
		Subconnect db=new Subconnect();
		Scanner sc=new Scanner(System.in);

		//insert
		public void insertMyStudent()
		{
			//Connection
			Connection conn=db.getConnection();
			PreparedStatement pstmt=null;

			System.out.println("학생명을 입력하세요");
			String stu_name=sc.nextLine();
			System.out.println("몇학년 인가요?");
			int stu_grade=Integer.parseInt(sc.nextLine());
			System.out.println("휴대폰 번호를 입력해주세요");
			String hp=sc.nextLine();
			System.out.println("주소를 입력하세요");
			String addr=sc.nextLine();
			System.out.println("나이를 입력하세요");
			int age=Integer.parseInt(sc.nextLine());

			String spl="insert into MyStudent values (seq_stu.nextval,?,?,?,?,?,sysdate)";

			try {
				pstmt=conn.prepareStatement(spl);

				pstmt.setString(1, stu_name);
				pstmt.setInt(2, stu_grade);
				pstmt.setString(3, hp);
				pstmt.setString(4, addr);
				pstmt.setInt(5, age);

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
		public void selectMystudent() 
		{
			System.out.println("시퀀스\t학생명\t학년\t핸드폰번호\t주소\t나이\t등록날짜");
			System.out.println("===========================");
			
			//요청한 sql문을 String에 저장
			String sql="select * from mystudent order by stu_num";
			
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
					System.out.println(rs.getInt("stu_num")
							+"\t"+rs.getString("stu_name")
							+"\t"+rs.getInt("stu_grade")
							+"\t"+rs.getString("hp")
							+"\t"+rs.getString("addr")
							+"\t"+rs.getInt("age")
							+"\t"+rs.getDate("sdate"));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				db.dbClose(rs, null, conn);
			}
		
	}
		
	public void deleteMystudent()
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		System.out.println("삭제할 시퀀스?");
		int stu_num=Integer.parseInt(sc.nextLine());
		
		String sql="delete from mystudent where stu_num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, stu_num);
			
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
	
	public boolean workData(String stu_num)
	{
		boolean b=false;
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from mystudent where stu_num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, stu_num);
			rs=pstmt.executeQuery();
			
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
	
	public void updateMystudent()
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		System.out.println("수정할 학생 번호는?");
		String stu_num=sc.nextLine();
		
		if(!workData(stu_num))
		{
			System.out.println("해당 번호는 존재하지 않습니다");
			return;
		}
		
		System.out.println("수정할 학생명?");
		String stu_name=sc.nextLine();
		System.out.println("수정할 학년은?");
		int stu_grade=Integer.parseInt(sc.nextLine());
		System.out.println("수정할 핸드폰번호는?");
		String hp=sc.nextLine();
		System.out.println("수정할 주소는?");
		String addr=sc.nextLine();
		System.out.println("수정할 나이는?");
		int age=Integer.parseInt(sc.nextLine());
		
		String sql="update mystudent set stu_name=?,stu_grade=?,hp=?,addr=?,age=? where stu_num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, stu_name);
			pstmt.setInt(2, stu_grade);
			pstmt.setString(3, hp);
			pstmt.setString(4, addr);
			pstmt.setInt(5, age);
			pstmt.setString(6, stu_num);
			
			pstmt.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
		
	}
	
	//검색
	public void searchmystudent()
	{
		System.out.println("검색할 학생명(일부)");
		String stu=sc.nextLine();
		
		String sql="select * from mystudent where stu_name like ?";
		System.out.println(sql);
		
		System.out.println("시퀀스\t학생명\t학년\t핸드폰번호\t주소\t나이\t등록날짜");
		System.out.println("-----------------------------");
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null; // ? 했으니까(?)
		ResultSet rs=null;
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+stu+"%");
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				System.out.println(rs.getInt("stu_num")
						+"\t"+rs.getString("stu_name")
						+"\t"+rs.getInt("stu_grade")
						+"\t"+rs.getString("hp")
						+"\t"+rs.getString("addr")
						+"\t"+rs.getInt("age")
						+"\t"+rs.getDate("sdate"));
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
		
		homework ps=new homework();
		Scanner sc=new Scanner(System.in);
		
		int n;
		while(true)
		{
			System.out.println("**학생정보**");
			System.out.println("1.입력  2.출력  3.삭제  4.수정 5.학생정보검색  9.종료");
			n=Integer.parseInt(sc.nextLine());
			
			if(n==1)
				ps.insertMyStudent();
			else if(n==9)
			{
				System.out.println("종료합니다");
				break;
			}
			else if(n==2)
				ps.selectMystudent();
			else if(n==3)
				ps.deleteMystudent();
			else if(n==4)
				ps.updateMystudent();
			else if(n==5)
				ps.searchmystudent();
			
	}
	}
	
}
