package com.mask.model;

import java.util.List;

import com.mask.dto.ReplyDTO;

import com.mask.vo.PageMaker;

public interface ReplyService {

		  public void addReply(ReplyDTO vo) throws Exception;

		  public List<ReplyDTO> listReply(Integer bno) throws Exception;

		  public void modifyReply(ReplyDTO vo) throws Exception;

		  public void removeReply(Integer rno) throws Exception;

		  public List<ReplyDTO> listReplyPage(Integer titleNum, PageMaker pm) 
		      throws Exception;

		  public int count(Integer titleNum) throws Exception;

}
