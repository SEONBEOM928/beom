package boot.data.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.security.auth.Subject;
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

import boot.data.dto.MemBoardDto;
import boot.data.dto.ReboardDto;
import boot.data.service.ReboardService;

@Controller
@RequestMapping("/reboard")
public class ReBoardController {

	@Autowired
	ReboardService service;
	
	@GetMapping("/list")
	public ModelAndView list(@RequestParam(defaultValue = "1") int currentPage,
			@RequestParam(value = "searchcolumn",required = false) String sc,
			@RequestParam(value = "searchword",required = false) String sw)
	{
		ModelAndView model=new ModelAndView();
		
		//페이징에 필요한 변수
		int totalCount=service.getTotalCount(sc, sw); //전체객수
		int totalPage; //총 페이지수
		int startPage; //각블럭에서 보여질 시작페이지
		int endPage; //각블럭에서 보여질 끝페이지
		int startNum; //db에서 가져올 글의 시작번호(mysql은 첫글이 0,오라클은 1)
		int perPage=5; //한페이지당 보여질 글의 갯수
		int perBlock=5; //한블럭당 보여질 페이지 개수
	     
	     
		//총페이지수 구하기
		//총글의 갯수/한페이지당 보여질 개수로 나눔(7/5=1)
		//나머지가 1이라도 있으면 무조건 1페이지 추가(1+1=2페이지가 필요)
	  	totalPage=totalCount/perPage+(totalCount%perPage==0?0:1);
	 
		//각블럭당 보여야할 시작페이지
		//perBlock=5일경우는 현재페이지 1~5 시작:1 끝:5
		//현재페이지 13  시작:11  끝:15
	  	startPage=(currentPage-1)/perBlock*perBlock+1;
	     
	  	endPage=startPage+perBlock-1;
	    
	 // 총페이지가 23일경우 마지막블럭은 25가아니라 23이다   
	      if(endPage>totalPage)
	        	endPage=totalPage;
	     
		//각페이지에서 보여질 시작번호
		//1페이지: 0,2페이지:5 3페이지:10....
		startNum=(currentPage-1)*perPage;	
		
		//페이지에서 보여질 글만 가져오기
		List<ReboardDto> list=service.getPagingList(sc, sw, startNum, perPage);
		
		//각페이지에 출력할 시작번호
		int no=totalCount-(currentPage-1)*perPage;

		
		model.addObject("totalCount", totalCount);
		model.addObject("list", list);
		model.addObject("startPage", startPage);
		model.addObject("endPage", endPage);
		model.addObject("totalPage", totalPage);
		model.addObject("no", no);
		model.addObject("currentPage", currentPage);
		
		System.out.println("totalCount="+totalCount);
	
		model.setViewName("/reboard/boardlist");
		
		return model;
	}
	
	@GetMapping("/form")
	public String reform(@RequestParam(defaultValue = "0") int num,
			@RequestParam(defaultValue = "0") int regroup,
			@RequestParam(defaultValue = "0") int restep,
			@RequestParam(defaultValue = "0") int relevel,
			@RequestParam(defaultValue = "1") int currentPage,
			Model model)
	{
		 //답글일경우에만 넘어오는 값들이다
		
		//새글일경우 모두 null이므로 defaultvalue만 값으로전달
		model.addAttribute("num", num);
		model.addAttribute("regroup", regroup);
		model.addAttribute("restep", restep);
		model.addAttribute("relevel", relevel);
		model.addAttribute("currentPage", currentPage);
		
		//새글일경우는 "",답글인경우에는 원글 제목 가져오기
		String subject="";
		if(num>0) {
			subject=service.getData(num).getSubject();
		}
		
		return "/reboard/addform";
	}
	
	@PostMapping("/insert")
	public String reboardinsert(@ModelAttribute ReboardDto dto,
			@RequestParam ArrayList<MultipartFile> upload,
			HttpSession session,
			@RequestParam(defaultValue = "1") int currentPage)
	{
		String path=session.getServletContext().getRealPath("/rephoto");
		String myid=(String)session.getAttribute("myid");
		String loginname=(String)session.getAttribute("loginname");
		
		String uploadname="";
		
		if(upload.get(0).getOriginalFilename().equals(""))
			uploadname="no";
		else {
			for(MultipartFile r:upload)
			{
				SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
				String photoname=sdf.format(new Date())+"_"+r.getOriginalFilename();
				uploadname+=photoname+",";
				
				try {
					r.transferTo(new File(path+"/"+photoname));
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			uploadname=uploadname.substring(0, uploadname.length()-1);
		}
		dto.setPhoto(uploadname);
		dto.setId(myid);
		dto.setName(loginname);
		
		service.insertReboard(dto);
		return "redirect:list?currentPage="+currentPage;
	}
	
	@GetMapping("/content")
	public String detail(int num,int currentPage,Model model)
	{
		//조회수 증가
		service.updateReadCount(num);
		
		//dto
		ReboardDto dto=service.getData(num);
		
		model.addAttribute("dto", dto);
		model.addAttribute("currentPage", currentPage);
		
		return "/reboard/content";
	}
	
	//추천수증가
	@GetMapping("/likes")
	@ResponseBody
	public Map<String, Integer> likes(int num)
	{
		service.updateLikes(num);
		int likes=service.getData(num).getLikes();
		Map<String, Integer> map=new HashMap<>();
		
		map.put("likes", likes);
		
		return map;
	}
	//삭제
}
