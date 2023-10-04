package spring.anno.ex6;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

//해당 메서드를 가져와서 나머지 자바 문법을 구성
@Component("mysqlc")
public class MysqlController {
	
	@Autowired
	TestDao tdao;
	
	public void myinsert(String name)
	{
		tdao.insert(name);
	}
	
	public void mydelete(String num)
	{
		tdao.delete(num);
	}
	
	public void myselect(String name)
	{
		tdao.select(name);
	}

}
