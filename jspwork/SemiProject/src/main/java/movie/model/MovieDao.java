package movie.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mysql.db.DBConnect;

public class MovieDao {
	
	DBConnect db=new DBConnect();
	
	public List<MovieDto> getAllMovies() {
		
		List<MovieDto> list=new ArrayList<MovieDto>();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from Movie_table order by mv_no desc";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				MovieDto dto=new MovieDto();
				
				dto.setMv_no(rs.getString("mv_no"));
				dto.setMv_title(rs.getString("mv_title"));
				dto.setMv_poster(rs.getString("mv_poster"));
				dto.setMv_director(rs.getString("mv_director"));
				dto.setMv_st(rs.getString("mv_st"));
				dto.setMv_trailer(rs.getString("mv_trailer"));
				dto.setMv_opendate(rs.getString("mv_opendate"));
				dto.setMv_info(rs.getString("mv_info"));
				dto.setMv_regdate(rs.getTimestamp("mv_regdate"));
				dto.setMv_genre(rs.getString("mv_genre"));
				dto.setMv_name(rs.getString("mv_name"));
				dto.setMv_adult(rs.getInt("mv_adult"));
				dto.setMv_teen(rs.getInt("mv_teen"));
				dto.setMv_child(rs.getInt("mv_child"));
				
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
	
	 
}
