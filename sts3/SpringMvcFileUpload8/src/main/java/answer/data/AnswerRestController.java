package answer.data;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import spring.mvc.reboard.BoardDao;

@RestController
public class AnswerRestController {
	
	@Autowired
	AnswerDao adao;
	
	@GetMapping("/board/adelete")
	public Map<String,Integer> answerDelete(
			@RequestParam int idx,
			@RequestParam String pass)
	{	
		int check=adao.getCheckPass(idx, pass);
		if(check==1) //비번이 맞으면 삭제
		{
			adao.deleteAnswer(idx);
		}
		
		Map<String, Integer> map=new HashMap<String, Integer>();
		map.put("check", check); //{"check":1}
		
		return map;
	}

}
