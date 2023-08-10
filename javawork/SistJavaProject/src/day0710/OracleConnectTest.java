package day0710;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class OracleConnectTest {

	
	static final String URL="jdbc:oracle:thin:@localhost:1521:XE";
	
	public void connectSawon() {
			
		Connection conn=null; //자바 오라클 이어주는 커넥션
		Statement stmt=null; // 거기서 sql문 전달
		ResultSet rs=null; //출력문을 읽어온다 리스트가 없을때까지 
		
		String sql="select * from sawon order by name";
		
		try {
			conn=DriverManager.getConnection(URL, "Tiger", "a1234");
			System.out.println("클라우드 오라클 서버 연결성공!!!");
			
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) //true값 반환 , 더이상 데이터 없으면 false
			{
				//db로부터 데이터 가져오기
				int num=rs.getInt("num"); //컬럼명 or 열번호
				String name=rs.getString("name");
				String gender=rs.getString("gender");
				String buseo=rs.getString("buseo");
				int pay=rs.getInt("pay");
				
				System.out.println(num+"\t"+name+"\t"+gender+"\t"+buseo+"\t"+pay);
			}
				
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("오라클 서버 연결 실패!!!!"+e.getMessage());
		}finally {
			try {
				if(rs!=null) rs.close();
				if(stmt!=null) stmt.close();
				if(conn!=null) conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public void connectBamin()
	{
		//주문번호 주문자 음식명 가격 상호명 가게위치 주문자주소
		Connection conn1=null; 
		Statement stmt1=null; 
		ResultSet rs1=null;
		
		String sql="select j.fno ,j.name ,f.foodname ,f.price ,f.shopname ,f.loc , j.addr "
				+ "from food f,jumun j"
				+ "where f.fno=j.fno";
			
		
		
		
		try {
			
			conn1=DriverManager.getConnection(URL, "Tiger", "a1234");
			System.out.println("클라우드 오라클 서버 연결성공!!!");
			
			stmt1=conn1.createStatement();
			rs1=stmt1.executeQuery(sql);
		
			
			while(rs1.next())
			{
			int num1=rs1.getInt("num1");
			String name1=rs1.getString("name1");
			String foodname1=rs1.getString("foodname1");
			int price1=rs1.getInt("price1");
			String shopname1=rs1.getString("shopname1");
			String loc1=rs1.getString("loc1");
			String addr1=rs1.getString("addr1");
			
			System.out.println(num1+"\t"+name1+"\t"+foodname1+"\t"+price1+"\t"+shopname1+"\t"+loc1+"\t"+addr1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("오라클 접속 실패!!!"+e.getMessage());
		}finally {
			try
			{
				rs1.close();
				stmt1.close();
				conn1.close();
			}catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
				
	}
	
	public void connectSawonGroup()
	{
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		String sql="select gender,count(*) cnt,to_char(avg(pay),'L999,999,999') avgpay from sawon group by gender";
		
		try {
			conn=DriverManager.getConnection(URL, "Tiger", "a1234");
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			
			System.out.println("**성별 인원및 평균급여**");
			System.out.println("성별\t인원수\t평균급여");
			System.out.println("-------------------");
			while(rs.next())
			{
				String gender=rs.getString("gender");
				int count=rs.getInt("cnt");
				String avgpay=rs.getString("avgpay");
				
				System.out.println(gender+"\t"+count+"\t"+avgpay);
				
			}
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				stmt.close();
				conn.close();
				
			} catch (SQLException e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}

	
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		OracleConnectTest oc=new OracleConnectTest();
		oc.connectSawonGroup();
		
		
	}

}
