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
	@ResponseBody /* json ó���� �������� ���(�Ϲ� ��Ʈ�ѷ��ϰ��) */
	public Map<String, String> list1()
	{
		Map<String, String> map=new HashMap<String, String>();
		
		map.put("name", "�����");
		map.put("hp", "010-222-3333");
		map.put("addr", "������ ��ȱ�");
		
		return map;
	}
	
	@GetMapping("/list3")
	public @ResponseBody List<PhotoDto> list3()
	{
		List<PhotoDto> list=new ArrayList<PhotoDto>();
		
		list.add(new PhotoDto("ĳ����1", "01.png"));
		list.add(new PhotoDto("ĳ����2", "02.png"));
		list.add(new PhotoDto("ĳ����3", "03.png"));
		list.add(new PhotoDto("ĳ����4", "04.png"));
		list.add(new PhotoDto("ĳ����5", "05.png"));
		
		return list;
	}
}