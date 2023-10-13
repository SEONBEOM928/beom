package spring.mysql.carmember;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

@Repository
public class CarMemberDao implements CarMemberInter {
	
	@Autowired
	private SqlSession session;
	
	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		return session.selectOne("getTotalCountOfCarMember");
	}
	
	
	//insert
	@Override
	public void insertCarMember(CarMemberDto dto)
	{
		session.insert("insertOfCarMember", dto);
	}
	
	//전체목록
	@Override
	public List<CarMemberDto> getAllCarMembers()
	{
		return session.selectList("getAllCarMembers");
	}
	
	//getdata
	@Override
	public CarMemberDto getdata(int num)
	{
		return session.selectOne("selectOneOfMyCarmember", num);
	}
	
	@Override
	public void updateCarMember(@ModelAttribute("dto") CarMemberDto dto)
	{
		session.update("updateCarmember", dto);
	}
	
	@Override
	public void deleteCarMember(@RequestParam int num)
	{
		session.delete("deleteCarmember", num);
	}
}
