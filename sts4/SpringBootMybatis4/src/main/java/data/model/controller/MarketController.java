package data.model.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import data.model.dto.MarketDto;
import data.model.mapper.MarketMapperInter;

@Controller
public class MarketController {
	
	@Autowired
	MarketMapperInter mapper;
	
	@GetMapping("/market/list")
	public ModelAndView list()
	{
		ModelAndView model=new ModelAndView();
		
		//db로 부터 총개수 얻기
		int totalCount=mapper.getTotalCount();
		List<MarketDto> list=mapper.getAllSangpums();
		
		//저장
		model.addObject("totalCount", totalCount);
		model.addObject("list", list);
		//포워드
		model.setViewName("/market/marketlist");
		
		return model;
	}
	
	@GetMapping("/market/writeform")
	public String addform()
	{
		return "market/addform";
	}
	
	@PostMapping("/market/add")
	public String insert(@ModelAttribute MarketDto mdto,
			MultipartFile photoname2,
			HttpSession session)
	{
		//업로드할 save 위치구하기
		String path=session.getServletContext().getRealPath("/save");
		//업로드한 파일 dto얻기
		mdto.setPhotoname(photoname2.getOriginalFilename());
		
		try {
			photoname2.transferTo(new File(path+"/"+photoname2.getOriginalFilename()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mapper.insertMarket(mdto);
				
		return "redirect:market/marketlist";
	}
	

}
