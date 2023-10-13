package spring.mysql.carmember;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.support.DaoSupport;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CarMemberController {
	
	@Autowired
	CarMemberInter inter;
	
	@GetMapping("/member/list")
	public String memberStart(Model model)
	{
		//갯수가져오기
		int count=inter.getTotalCount();
		
		//목록
		List<CarMemberDto> list=inter.getAllCarMembers();
		
		//request에 저장
		model.addAttribute("count", count);
		model.addAttribute("list", list);
		
		return "carmember/memberlist";
	}
	
	@GetMapping("/member/addform")
	public String memberform()
	{
		return "carmember/addform";
	}
	
	//insert
	@PostMapping("/member/add")
	public String insertmemberform(@ModelAttribute("dto") CarMemberDto dto) {
		
	inter.insertCarMember(dto);
		
	return "redirect:list";
}
	
	//update
	@GetMapping("/member/updateform")
	public String upform(@RequestParam int num, Model model)
	{
		CarMemberDto dto=inter.getdata(num);
		model.addAttribute("dto", dto);
		
		return "carmember/updateform";
	}
	
	@PostMapping("/member/update")
	public String update(@ModelAttribute CarMemberDto dto)
	{
		inter.updateCarMember(dto);
		
		return "redirect:list";
	}
	
	@GetMapping("/member/delete")
	public String delete(@RequestParam int num)
	{
		inter.deleteCarMember(num);
		return "redirect:list";
	}
}
