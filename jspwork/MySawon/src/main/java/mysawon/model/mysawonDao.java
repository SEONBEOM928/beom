package mysawon.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;



import oracle_db.DBConnect;

public class mysawonDao {
	
	DBConnect db=new DBConnect();
	
	public void insertMysawon(mysawonDto dto) {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="insert into mysawon values(seq_mysawon.nextval,?,?,?,?,?,?,?,?,sysdate,?)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,dto.getName());
			pstmt.setString(2,dto.getId());
			pstmt.setString(3,dto.getPass());
			pstmt.setString(4,dto.getJoomin());
			pstmt.setInt(5,dto.getAge());
			pstmt.setString(6,dto.getGender());
			pstmt.setString(7,dto.getBuseo());
			pstmt.setString(8,dto.getGrade());
			pstmt.setString(9,dto.getPhoto());
			
			pstmt.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}		
	}
	
	public Vector<mysawonDto> getAllMysawons(){
		Vector<mysawonDto> list=new Vector<mysawonDto>();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from mysawon order by num";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				mysawonDto dto=new mysawonDto();
				
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setJoomin(rs.getString("joomin"));
				dto.setAge(rs.getInt("age"));
				dto.setGender(rs.getString("gender"));
				dto.setBuseo(rs.getString("buseo"));
				dto.setGrade(rs.getString("grade"));
				dto.setIpsaday(rs.getTimestamp("ipsaday"));
				dto.setPhoto(rs.getString("photo"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		
		return list;
	}
}
