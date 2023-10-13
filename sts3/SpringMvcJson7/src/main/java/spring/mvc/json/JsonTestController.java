package spring.mvc.json;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class JsonTestController {

	@GetMapping("/list1")
	@ResponseBody /* json 처리후 브라우저로 출력(일반 컨트롤러일경우) */
	public Map<String, String> list1()
	{
		Map<String, String> map=new HashMap<String, String>();
		
		map.put("name", "장순영");
		map.put("hp", "010-222-3333");
		map.put("addr", "수원시 장안구");
		
		return map;
	}
	
	@GetMapping("/list3")
	public @ResponseBody List<PhotoDto> list3()
	{
		List<PhotoDto> list=new ArrayList<PhotoDto>();
		
		list.add(new PhotoDto("캐릭터1", "01.png"));
		list.add(new PhotoDto("캐릭터2", "02.png"));
		list.add(new PhotoDto("캐릭터3", "03.png"));
		list.add(new PhotoDto("캐릭터4", "04.png"));
		list.add(new PhotoDto("캐릭터5", "05.png"));
		
		return list;
	}
}
