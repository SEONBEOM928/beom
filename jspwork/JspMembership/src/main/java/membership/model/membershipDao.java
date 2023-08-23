package membership.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import mysql.db.DBConnect;

public class membershipDao {
	
	DBConnect db=new DBConnect();
	
	public void insertMembership(membershipDto dto) {
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="insert into membership (id,pass,name,hp,birth,gender,race,mail,addr,gaip) values (?,?,?,?,?,?,?,?,?,now())";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPass());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getHp());
			pstmt.setString(5, dto.getBirth());
			pstmt.setString(6, dto.getGender());
			pstmt.setString(7, dto.getRace());
			pstmt.setString(8, dto.getMail());
			pstmt.setString(9, dto.getAddr());
			
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
}
