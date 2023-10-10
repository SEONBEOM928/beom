package spring.mvc.munje;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import spring.data.dto.InfoDto;

@Controller
public class InfoController {
	@GetMapping("/info/form")
	public String form()
	{		
		return "info/infoForm";
	}
	
	/* 포워드만 할때는 string만 써도 되서 위에 문장을 사용 
	 @GetMapping("/info/form")
		public ModelAndView form()
		{		
		ModelAndView model=new ModelAndView();
		model.setViewName("info/infoForm");
		return model;
		} 
	  */
	
	@PostMapping("/info/result")
	public String process(@ModelAttribute("dto") InfoDto dto)
	{		
		return "info/infoWrite";
	}
}
