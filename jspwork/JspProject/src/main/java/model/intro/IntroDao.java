package model.intro;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ConcurrentModificationException;
import java.util.Vector;

import oracle.db.DBConnect;

public class IntroDao {
	
	DBConnect db=new DBConnect();
	
	//insert
	public void insertIntro(IntroDto dto)
	{
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		String sql="insert into intro values(seq1.nextval,?,?,?,?,sysdate)";
		
		conn=db.getConnection();
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getIntro_name());
			pstmt.setString(2, dto.getIntro_blood());
			pstmt.setString(3, dto.getIntro_hp());
			pstmt.setString(4, dto.getIntro_city());
			pstmt.executeUpdate();		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}		
	}
	
	//select
	public Vector<IntroDto> getData()
	{
		Vector<IntroDto> list=new Vector<IntroDto>();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from intro order by Intro_num";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next()) 
			{
				IntroDto dto=new IntroDto();
				dto.setIntro_num(rs.getString("INTRO_NUM"));
				dto.setIntro_name(rs.getString("INTRO_NAME"));
				dto.setIntro_blood(rs.getString("INTRO_BLOOD"));
				dto.setIntro_hp(rs.getString("INTRO_HP"));
				dto.setIntro_city(rs.getString("INTRO_CITY"));
				dto.setGaipday(rs.getTimestamp("GAIPDAY"));
				
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
	
	public IntroDto getName(String Intro_num)
	{
		IntroDto dto=new IntroDto();
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from intro where Intro_num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, Intro_num);
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				dto.setIntro_num(rs.getString("Intro_num"));
				dto.setIntro_name(rs.getString("Intro_name"));
				dto.setIntro_blood(rs.getString("Intro_blood"));
				dto.setIntro_hp(rs.getString("Intro_hp"));
				dto.setIntro_city(rs.getString("Intro_city"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		return dto;
	}
	
	//update
	public void updateIntro(IntroDto dto) {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="update intro set intro_name=?, intro_blood=?, intro_hp=?, intro_city=? where intro_num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			  pstmt.setString(1, dto.getIntro_num());
	          pstmt.setString(2, dto.getIntro_blood());
	          pstmt.setString(3, dto.getIntro_hp());
	          pstmt.setString(4, dto.getIntro_city());
	          pstmt.setString(5, dto.getIntro_num());
	          
	          pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	//delete
	public void deleteIntro(String Intro_num)
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="delete from intro where Intro_num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, Intro_num);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	
	
	}
	
}
