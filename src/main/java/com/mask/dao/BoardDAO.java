package com.mask.dao;

import java.util.List;

import com.mask.dto.BoardDTO;
import com.mask.vo.PageMaker;

public interface BoardDAO {
	
	  public void create(BoardDTO vo) throws Exception;
	  
	  public BoardDTO read(int titleNum) throws Exception;

	  public void update(BoardDTO vo) throws Exception;

	  public void delete(int titleNum) throws Exception;
	//  
	  
	  public List<BoardDTO> listSearch(PageMaker pm)throws Exception;
	//  
	  public int listSearchCount(PageMaker pm)throws Exception;

}
