package spring.mysql.carmember;

import java.util.List;

public interface CarMemberInter {

	public int getTotalCount();
	//insert
	//allselect
	//getdata
	//update
	//delete

	void insertCarMember(CarMemberDto dto);

	List<CarMemberDto> getAllCarMembers();

	CarMemberDto getdata(int num);

	void updateCarMember(CarMemberDto dto);

	void deleteCarMember(int num);
}
