package boot.data.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import boot.data.dto.MemberDto;
import boot.data.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService service;
	
	@GetMapping("/member/myinfo")
	public String info(Model model)
	{
		List<MemberDto> list=service.getAllMembers();
		
		model.addAttribute("list", list);
		return "/member/myinfo";
	}
	
	@GetMapping("/member/list")
	//form 나타나게할거면 String , list 나타나게할거면 ModelAndView로 하는것 권장
	public ModelAndView list()
	{
		ModelAndView model=new ModelAndView();
		
		List<MemberDto> list=service.getAllMembers(); 
		
		model.addObject("list", list);
		model.addObject("totalCount", list.size());
		
		model.setViewName("/member/memberlist");
		return model;
	}
	
	@GetMapping("/member/form")
	public String form()
	{
		return "/member/addform";
	}
	
	//아이디 체크
	@GetMapping("/member/idcheck")
	/* json으로 반환하기위함 */
	@ResponseBody 
	public Map<String, Integer> idcheck(@RequestParam String id) {
        
		Map<String, Integer> map=new HashMap<>();
		
		int n=service.getSearchId(id);
		
		map.put("count", n); //0 or 1
		
		return map;
    }
	
	//insert(일단은 list로 가는데 admin이 아니면 gaipsuccess로 이동)
	@PostMapping("/member/insert")
	public String insert(@ModelAttribute MemberDto dto,
			@RequestParam MultipartFile myphoto,
			HttpSession session)
	{
		String path=session.getServletContext().getRealPath("/membersave");
		
		String photoName="";
		if(myphoto.getOriginalFilename().equals(""))
			photoName="no";
		else {
			SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
			photoName=sdf.format(new Date())+"_"+myphoto.getOriginalFilename();
			
			try {
				myphoto.transferTo(new File(path+"/"+photoName));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		dto.setPhoto(photoName);
		service.insertMember(dto);
		
		return "redirect:list";
	}
	
	//삭제는 ajax -> ajax라서 void를 씀
	@GetMapping("/member/delete")
	@ResponseBody
	public void deleteMember(@RequestParam String num)
	{
		service.deleteMember(num);
	}

	//사진만 수정
	@PostMapping("/member/updatephoto")
	@ResponseBody
	public void photoupload(String num,MultipartFile photo,HttpSession session)
	{
		//업로드할 경로
		String path=session.getServletContext().getRealPath("/membersave");
		
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHss");
		String fileName=sdf.format(new Date())+"_"+photo.getOriginalFilename();
		
		//업로드
		try {
			photo.transferTo(new File(path+"/"+fileName));
			
			service.updatephoto(num, fileName); //db사진수정
			//세션사진수정
			session.setAttribute("loginphoto", fileName);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	@GetMapping("/member/deletemyinfo")
	public String deletemyinfo(@RequestParam String id,
			HttpSession session)
	{
		service.deleteMyInfo(id);
		session.removeAttribute("loginok");
		return "/";
	}
}
