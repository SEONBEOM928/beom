package mycar.data;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/car")
public class MyCarController {
	
	@Autowired
	MyCarDao dao;
	
	@GetMapping("/carlist") //시작페이지
	public ModelAndView list()
	{
		ModelAndView model=new ModelAndView();
		
		List<MyCarDto> list=dao.getAllDatas();
		
		model.addObject("list", list);
		model.addObject("totalcount", list.size());
		
		model.setViewName("carlist");
		return model;
	}
	
	@GetMapping("/carform")
	public String form()
	{
		return "addform";
	}
	
	//insert
	@PostMapping("/insert")
	public String insert(@ModelAttribute MyCarDto dto)
	{
		dao.insertMyCar(dto);
		
		return "redirect:carlist";
	}
}
