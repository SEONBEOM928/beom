package day0710;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class QuizConnectNewBoard {

	static final String URL="jdbc:oracle:thin:@localhost:1521:XE";
	
	public void connectSnsBoard() {
		Connection conn=null; 
		Statement stmt=null; 
		ResultSet rs=null;
		
		String sql="select b_num ,nick ,subject ,content ,wday  from snsboard";
		
		try {
			conn=DriverManager.getConnection(URL, "Tiger", "a1234");
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) //true값 반환 , 더이상 데이터 없으면 false
			{
				//db로부터 데이터 가져오기
				int b_num=rs.getInt("b_num"); //컬럼명 or 열번호
				String nick=rs.getString("nick");
				String subject=rs.getString("subject");
				String content=rs.getString("content");
				String wday=rs.getString("wday");
				
				System.out.println(b_num+"\t"+nick+"\t"+subject+"\t"+content+"\t"+wday);
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
		QuizConnectNewBoard on=new QuizConnectNewBoard();
		on.connectSnsBoard();
	}

}
