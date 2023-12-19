package boot.data.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import boot.data.dto.MemberDto;

@Service
public class MemberService implements MemberServiceInter {

	@Override
	public void insertMember(MemberDto dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<MemberDto> getAllMembers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getSearchId(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String getName(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int loginPassCheck(String id, String pass) {
		// TODO Auto-generated method stub
		return 0;
	}

	

}
