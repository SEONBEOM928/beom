package data.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.model.dto.MovieDto;

@Mapper
public interface MovieMapperInter {
	
	public List<MovieDto> getAllMovies();
	public void insertMovie(MovieDto dto);
	public MovieDto getData(String num);
}
