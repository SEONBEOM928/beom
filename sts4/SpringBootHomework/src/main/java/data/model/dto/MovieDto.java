package data.model.dto;



import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("modto")
public class MovieDto {
	
	private int mv_num;
	private String mv_title;
	private String mv_poster;
	private String mv_director;
	private String mv_opendate;
}
