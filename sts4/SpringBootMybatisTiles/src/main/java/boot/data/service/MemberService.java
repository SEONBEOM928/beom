package boot.data.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import boot.data.dto.MemberDto;
import boot.data.mapper.MemberMapperInter;

@Service
public class MemberService implements MemberServiceInter {

	@Autowired
	MemberMapperInter mapperInter;
	
	@Override
	public void insertMember(MemberDto dto) {
		// TODO Auto-generated method stub
		mapperInter.insertMember(dto);
	}

	@Override
	public List<MemberDto> getAllMembers() {
		// TODO Auto-generated method stub
		return mapperInter.getAllMembers();
	}

	@Override
	public int getSearchId(String id) {
		// TODO Auto-generated method stub
		return mapperInter.getSearchId(id);
	}

	@Override
	public String getName(String id) {
		// TODO Auto-generated method stub
		return mapperInter.getName(id);
	}

	@Override
	public int loginPassCheck(String id, String pass) {
		// TODO Auto-generated method stub
		Map<String, String> map = new HashMap<>(); /* MapperInter로 보내야하는 값이므로 다시 map으로 만들어서보내야함 */
		map.put("id", id);
		map.put("pass", pass);
		
		return mapperInter.loginPassCheck(map); 
	}

	@Override
	public MemberDto getDataById(String id) {
		// TODO Auto-generated method stub
		return mapperInter.getDataById(id);
	}

	@Override
	public void deleteMember(String num) {
		// TODO Auto-generated method stub
		
		mapperInter.deleteMember(num);
	}

	@Override
	public void updatephoto(String num, String photo) {
		// TODO Auto-generated method stub
		Map<String, String>map= new HashMap<>();
		map.put("photo", photo);
		map.put("num", num);
		
		mapperInter.updatephoto(map);
	}

	@Override
	public void updateMember(MemberDto dto) {
		// TODO Auto-generated method stub
		mapperInter.updateMember(dto);
	}

	@Override
	public void deleteMyInfo(String id) {
		// TODO Auto-generated method stub
		mapperInter.deleteMyInfo(id);
	}

}
