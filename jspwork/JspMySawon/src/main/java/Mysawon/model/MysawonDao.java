package Mysawon.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import oracle_db.DBConnect;

public class MysawonDao {
	
	DBConnect db=new DBConnect();
	
	public Vector<MysawonDto> getAllSawons()
	{
		Vector<MysawonDto> list=new Vector<MysawonDto>();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from mysawon_info order by num";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				MysawonDto dto=new MysawonDto();
				dto.setNum(rs.getInt("num"));
				dto.setImage(rs.getString("image"));
				dto.setName(rs.getString("name"));
				dto.setGender(rs.getString("gender"));
				dto.setAddr(rs.getString("addr"));
				dto.setJoomin(rs.getString("joomin"));
				dto.setHp(rs.getString("hp"));
				dto.setEmail(rs.getString("email"));
				
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}	
		return list;
	}
	
	public MysawonDto getData(int num)
	{
		MysawonDto dto=new MysawonDto();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from mysawon_info where num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			
			if(rs.next())
			{
				dto.setNum(rs.getInt("num"));
				dto.setImage(rs.getString("image"));
				dto.setName(rs.getString("name"));
				dto.setGender(rs.getString("gender"));
				dto.setAddr(rs.getString("addr"));
				dto.setJoomin(rs.getString("joomin"));
				dto.setHp(rs.getString("hp"));
				dto.setEmail(rs.getString("email"));
				dto.setPlusday(rs.getTimestamp("plusday"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return dto;
	}
	
	public void updateMySawon(MysawonDto dto) {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="update mysawon_info set image=?, name=?, gender=?, addr=?, joomin=?, hp=?, email=? where num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getImage());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getGender());
			pstmt.setString(4, dto.getAddr());
			pstmt.setString(5, dto.getJoomin());
			pstmt.setString(6, dto.getHp());
			pstmt.setString(7, dto.getEmail());
			pstmt.setInt(8, dto.getNum());
			
			pstmt.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
		public void DeleteMysawon(int num)
		{
			Connection conn=db.getConnection();
			PreparedStatement pstmt=null;
			
			String sql="delete from mysawon_info where num=?";
			
			try {
				pstmt=conn.prepareStatement(sql);
				
				pstmt.setInt(1, num);
				pstmt.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				db.dbClose(pstmt, conn);
			}
			
		}
	
}
