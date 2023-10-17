package spring.mvc.reboard;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDao implements BoardDaoInter {

	@Autowired
	SqlSession session;
	
	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		return session.selectOne("getTotalCountOfResult");
	}

	@Override
	public int getMaxNum() {
		// TODO Auto-generated method stub
		return session.selectOne("MaxNumOfReboard");
	}

	@Override
	public void updateRestep(int regroup, int restep) {
		// TODO Auto-generated method stub
		HashMap<String, Integer> map=new HashMap<String, Integer>();
		map.put("regroup", regroup);
		map.put("restep", restep);		
		session.update("UpdateStepOfReBoard", map);
	}

	@Override
	public void insertReboard(BoardDto dto) {
		// TODO Auto-generated method stub
		int num=dto.getNum();
		int regroup=dto.getRegroup();
		int restep=dto.getRestep();
		int relevel=dto.getRelevel();
		
		if(num==0) //����
		{
			regroup=getMaxNum()+1;
			restep=0;
			relevel=0;
		}else {
			//���� �׷��� ���޹��� restep���� ū�۵��� ��� +1
			updateRestep(regroup, restep);
			
			//���޹��� step�� level ��� +1
			restep++;
			relevel++;
		}
		
		//�ٲﰪ���� �ٽ� dto�� ��´�
		dto.setRegroup(regroup);
		dto.setRestep(restep);
		dto.setRelevel(relevel);
		
		//insert
		session.insert("insertOfReboard", dto);
	}

	@Override
	public List<BoardDto> getPagingList(int startPage, int perPage) {
		// TODO Auto-generated method stub
		HashMap<String, Integer> map=new HashMap<String, Integer>();
		map.put("startPage", startPage);
		map.put("perPage", perPage);
		
		return session.selectList("SelectPagingOfReboard", map);
	}

	@Override
	public BoardDto getData(int num) {
		// TODO Auto-generated method stub
		return session.selectOne("getDataOfReboard", num);
	}

	@Override
	public void updateReadcount(int num) {
		// TODO Auto-generated method stub
		session.update("UpdateReadCountOfReboard", num);
	}

	@Override
	public int getCheckPass(int num, int pass) {
		// TODO Auto-generated method stub
		HashMap<String, Integer> map=new HashMap<String, Integer>();
		map.put("num", num);
		map.put("pass", pass);
		return session.selectOne("CheckpassEqualOfReboard", map);
	}

	@Override
	public void updateReboard(BoardDto dto) {
		// TODO Auto-generated method stub
		session.update("UpdateOfReboard", dto);
	}

	@Override
	public void deleteReboard(int num) {
		// TODO Auto-generated method stub
		session.delete("DeleteOfReboard", num);
	}

}
