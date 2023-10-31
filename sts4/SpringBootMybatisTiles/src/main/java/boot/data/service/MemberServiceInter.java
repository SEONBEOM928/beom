package boot.data.service;

import java.util.List;
import java.util.Map;

import boot.data.dto.MemberDto;

public interface MemberServiceInter {
	
	public void insertMember(MemberDto dto);
	public List<MemberDto> getAllMembers();
	public int getSearchId(String id);
	public String getName(String id);
	public int loginPassCheck(String id, String pass); /* mybatis때문에(Sql에 파라미터타입때문) MapperInter에서는 Map으로 파라미터 가져와야함. */
	public MemberDto getDataById(String id);
	public void deleteMember(String num);
	public void updatephoto(String num,String photo);
	public void updateMember(MemberDto dto);
	public MemberDto getDataByNum(String num);
}
