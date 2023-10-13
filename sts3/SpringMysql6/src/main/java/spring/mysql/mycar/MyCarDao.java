package spring.mysql.mycar;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.GetMapping;

@Repository
public class MyCarDao {

	@Autowired
	private SqlSession session;
	
	String namespace="spring.mvc.mycar.MyCarDao";
	
	public int getTotalCount()
	{
		return session.selectOne(namespace+".getTotalCount");
	}
	
	//insert
	@GetMapping("/kakao/write")
	public void insertCar(MyCarDto dto)
	{
		session.insert("insertOfMycar", dto);
	}
	
	//전체목록
	public List<MyCarDto> getAllCars()
	{
		return session.selectList("getAllMylistOfMycar");
	}
	
	public void deleteCar (int num)
	{
		session.delete("deleteOfMycar", num);
	}
	
	public MyCarDto getData(String num)
	{
		return session.selectOne("selectOneOfMyCar", num);
	}
	
	public void updateCar(MyCarDto dto)
	{
		session.update("updateOfMycar", dto);
	}
}
