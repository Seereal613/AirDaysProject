package com.mask.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mask.dao.ReplyDAO;
import com.mask.dto.ReplyDTO;
import com.mask.vo.PageMaker;

@Service
public class ReplyServiceImpl implements ReplyService {


	@Autowired
	private SqlSession sqlSession;
	
  @Override
  public void addReply(ReplyDTO vo) throws Exception {
	  ReplyDAO dao=sqlSession.getMapper(ReplyDAO.class);
	  dao.insert(vo);
  }

  @Override
  public List<ReplyDTO> listReply(Integer titleNum) throws Exception {
	  ReplyDAO dao=sqlSession.getMapper(ReplyDAO.class);
    return dao.list(titleNum);
  }

  @Override
  public void modifyReply(ReplyDTO vo) throws Exception {
	  ReplyDAO dao=sqlSession.getMapper(ReplyDAO.class);
    dao.update(vo);
  }

  @Override
  public void removeReply(Integer rno) throws Exception {
	  ReplyDAO dao=sqlSession.getMapper(ReplyDAO.class);
    dao.delete(rno);
  }
  @Override
  public List<ReplyDTO> listReplyPage(Integer titleNum, PageMaker cri) 
      throws Exception {
	  ReplyDAO dao=sqlSession.getMapper(ReplyDAO.class);
    return dao.listPage(titleNum, cri);
  }
  @Override
  public int count(Integer titleNum) throws Exception {
	  ReplyDAO dao=sqlSession.getMapper(ReplyDAO.class);
    return dao.count(titleNum);
  }
}
