package boot.controller;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import boot.dto.PersonDto;

@Controller
public class FormController {

	@GetMapping("/sist/form1")
	public String form1()
	{
		return "form/form1";
	}
	
	@GetMapping("/sist/form2")
	public String form2()
	{
		return "form/form2";
	}
	
	@GetMapping("/sist/form3")
	public String form3()
	{
		return "form/form3";
	}
	
	@PostMapping("/sist/read1")
	public ModelAndView readform1(
			@RequestParam String irum,
			@RequestParam int java,
			@RequestParam int spring)
	{
		ModelAndView model=new ModelAndView();
		
		//저장
		model.addObject("irum", irum);
		model.addObject("java", java);
		model.addObject("spring", spring);
		model.addObject("tot", java+spring);
		model.addObject("avg", (java+spring)/2.0);
		
		//포워드 경로
		model.setViewName("result/result1");
		
		return model;
	}
	
	@PostMapping("/sist/write2")
	public String readform2(@ModelAttribute PersonDto dto)
	{		
		return "result/result2";
	}
	
	@PostMapping("/sist/myread")
	public ModelAndView readform3(@RequestParam HashMap<String, String> map)
	{
		ModelAndView model=new ModelAndView();
		
		model.addObject("name", map.get("name"));
		model.addObject("blood", map.get("blood"));
		model.addObject("age", map.get("age"));
		
		model.setViewName("result/result3");
		return model;
	}
	
	/* 다른방법(기교)
	 * @PostMapping("/sist/myread") 
	 * public String readform3
	 * (@RequestParam
	 * Map<String, String> map, Model model) { 
	 * String name=map.get("name"); 
	 * String
	 * blood=map.get("blood"); String age=map.get("age");
	 * 
	 * model.addAttribute("name", name); model.addAttribute("blood", blood);
	 * model.addAttribute("age", age);
	 * 
	 * return "result/result3";
	 * }
	 */
	//model.addAllAttribute(map); 를 사용하면 map에 있는값 한번에 가져와서 사용함
}
