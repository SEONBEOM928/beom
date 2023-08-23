package db.quiz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import db.quiz.QuizBoardDto;
import mysql.db.DBConnect;


public class QuizBoardDao {
	
	DBConnect db=new DBConnect();
	
	public void insertBoard(QuizBoardDto dto) {
	       Connection conn=db.getConnection();
	       PreparedStatement pstmt=null;
	       
	       String sql="insert into quizboard values(null,?,?,?,?,0,now())";
	       
	       try {
	         pstmt=conn.prepareStatement(sql);
	         
	         //바인딩
	         pstmt.setString(1, dto.getWriter());
	         pstmt.setString(2, dto.getTitle());
	         pstmt.setString(3, dto.getContent());
	         pstmt.setString(4, dto.getImgname());
	         
	         pstmt.execute();
	         
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         db.dbClose(pstmt, conn);
	      }

	}
	
	public List<QuizBoardDto> getAllBoards()
	{
		List<QuizBoardDto> list=new ArrayList<QuizBoardDto>();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from quizboard order by q_num desc";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				QuizBoardDto dto=new QuizBoardDto();
				
				dto.setQ_num(rs.getString("q_num"));
				dto.setWriter(rs.getString("writer"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setImgname(rs.getString("imgname"));
				dto.setReadcount(rs.getInt("readcount"));
				dto.setWriteday(rs.getTimestamp("writeday"));
				
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}		
		return list;
	}
	
	public int getTotalCount()
	{
		int total=0;
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select count(*) from quizboard";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			if(rs.next())
			{
				total=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return total;
	}
	
	public List<QuizBoardDto> getPagingList(int startNum,int perPage)
	{
		List<QuizBoardDto> list = new ArrayList<QuizBoardDto>();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from quizboard order by q_num desc limit ?,?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, startNum);
			pstmt.setInt(2, perPage);
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				QuizBoardDto dto=new QuizBoardDto();
				
				dto.setQ_num(rs.getString("q_num"));
				dto.setWriter(rs.getString("writer"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setImgname(rs.getString("imgname"));
				dto.setReadcount(rs.getInt("readcount"));
				dto.setWriteday(rs.getTimestamp("writeday"));
				
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
	public QuizBoardDto getBoard(String q_num) {
		QuizBoardDto dto = new QuizBoardDto();

		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select * from quizboard where q_num=?";

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, q_num);

			rs = pstmt.executeQuery();

			// rs = sql테이블이라고 생각, next()=> 마지막 행 확인할때 까지 돌린다.
			if (rs.next()) {

				// dto 인스턴스 사용
				dto.setQ_num(rs.getString("q_num")); // ""안에있는건 sql 열 이름
				dto.setWriter(rs.getString("writer"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setImgname(rs.getString("imgname"));
				dto.setReadcount(rs.getInt("readcount"));
				dto.setWriteday(rs.getTimestamp("writeday"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		return dto;
	}
	//조회수증가
	public void updateReadCount(String q_num)
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="update quizboard set readcount=readcount+1 where q_num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, q_num);
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
}
