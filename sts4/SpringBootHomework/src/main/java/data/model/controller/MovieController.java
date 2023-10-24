package data.model.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import data.model.dto.MovieDto;
import data.model.mapper.MovieMapperInter;

@Controller
public class MovieController {
	
	@Autowired
	MovieMapperInter inter;
	
	@GetMapping("/")
	public String start()
	{
		return "redirect:movie/list";
	}
	
	@GetMapping("/movie/list")
	public ModelAndView list()
	{
		ModelAndView model=new ModelAndView();
		List<MovieDto> list=inter.getAllMovies();
		
		model.addObject("list", list);
		model.setViewName("movie/movielist");
		
		return model;
	}
	
	@GetMapping("movie/writeform")
	public String addform()
	{
		return "movie/addform";
	}
	
	@PostMapping("movie/insert")
	public String insert(@ModelAttribute MovieDto modto,
			@RequestParam MultipartFile poster,
			HttpServletRequest request)
	{
		
		String path=request.getServletContext().getRealPath("/moviephoto");
		
		if(poster.getOriginalFilename().equals(""))
			modto.setMv_poster("no");
		else {
			SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmm");
			String photoname=sdf.format(new Date())+poster.getOriginalFilename();
			modto.setMv_poster(photoname);
			
			try {
				poster.transferTo(new File(path+"/"+photoname));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		inter.insertMovie(modto);
		return "redirect:list";
	}
	
	@GetMapping("movie/detail")
	public String detail(String num,Model model)
	{
		MovieDto dto=inter.getData(num);
		model.addAttribute("dto", dto);
		return "movie/detail";
	}
	
}
