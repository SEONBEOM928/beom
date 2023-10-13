package spring.mvc.json;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class JsonTest2Controller {
	@GetMapping("/list2")
	public Map<String, String> list2()
	{
		Map<String, String> map=new HashMap<String, String>();
		
		map.put("sang", "요가매트");
		map.put("color", "노랑");
		map.put("price", "10000");
		
		return map;
	}
	
	@GetMapping("/list4")
	public Map<String, Object> list4(@RequestParam String name)
	{
		List<PhotoDto> list=new ArrayList<PhotoDto>();
		
		list.add(new PhotoDto("캐릭터1", "01.png"));
		list.add(new PhotoDto("캐릭터2", "02.png"));
		list.add(new PhotoDto("캐릭터3", "03.png"));
		list.add(new PhotoDto("캐릭터4", "04.png"));
		list.add(new PhotoDto("캐릭터5", "05.png"));
		
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("name", "없는메뉴");
		map.put("photo", "5.jpg");
		
		for(PhotoDto dto:list)
		{
			if(name.equals(dto.getName()))
			{
				map.put("name", dto.getName());
				map.put("photo", dto.getPhoto());
			}
		}
		
		return map;
	}
}
