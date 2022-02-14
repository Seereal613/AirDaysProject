package com.mask.model;

import java.util.List;

import com.mask.dto.BoardDTO;
import com.mask.vo.PageMaker;

public interface BoardService {
	public void write(BoardDTO board) throws Exception;
	public BoardDTO read(int titleNum) throws Exception;
	public void modify(BoardDTO board) throws Exception;
	public void remove(int titleNum) throws Exception;
	public List<BoardDTO> listSearchCriteria(PageMaker pm) throws Exception;
	public int listSearchCount(PageMaker pm) throws Exception;
	
}
