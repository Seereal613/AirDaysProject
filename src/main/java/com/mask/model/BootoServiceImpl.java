package com.mask.model;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mask.dao.IBootoDao;
import com.mask.dto.BootoDto;

@Service
public class BootoServiceImpl implements BootoService {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insert(BootoDto dto) throws Exception {
		System.out.println(sqlSession);
		IBootoDao dao=sqlSession.getMapper(IBootoDao.class);
		dao.insert(dto);
	}

	@Override
	public void delete(String productNum) throws Exception {
		IBootoDao dao=sqlSession.getMapper(IBootoDao.class);
		dao.delete(productNum);
	}

	@Override
	public void deleteAll(String userID) throws Exception {
		IBootoDao dao=sqlSession.getMapper(IBootoDao.class);
		dao.deleteAll(userID);
	}

//	@Override
//	public List<BootoDto> listSearch(PageMaker pm) throws Exception {
//		IBootoDao dao=sqlSession.getMapper(IBootoDao.class);
//		return dao.listSearch(pm);
//		
//	}
//
//	@Override
//	public int listSearchCount(PageMaker pm) throws Exception {
//		IBootoDao dao=sqlSession.getMapper(IBootoDao.class);
//		return dao.listSearchCount(pm);
//	}

	@Override
	public ArrayList<BootoDto> selectAll() throws Exception {
		IBootoDao dao=sqlSession.getMapper(IBootoDao.class);
		return dao.selectAll();
	}
	/**
	 * 수정
	 */
	public void update(Map<String, String> map) throws Exception {
		IBootoDao dao=sqlSession.getMapper(IBootoDao.class);
		dao.update(map);
		
	}
	
	
	


}
