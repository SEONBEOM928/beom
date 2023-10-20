package mycar.data;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MyCarDao{

	@Autowired
	MyCarDaoInter carInter;
	
	//insert
	public void insertMyCar(MyCarDto dto)
	{
		carInter.save(dto); //id타입 유무에 따라 자동으로 insert인지, 또는 update
	}
	
	//전체출력
	public List<MyCarDto> getAllDatas()
	{
		return carInter.findAll();
	}
}
