package com.mask.model;

import java.util.ArrayList;
import java.util.Map;

import com.mask.dto.BootoDto;

	public interface BootoService {
	
	public void insert(BootoDto dto) throws Exception; //장바구니 추가
	public void delete(String productNum) throws Exception; //장바구니 개별삭제
	public void deleteAll(String userID) throws Exception;	 	//장바구니 비우기
	public ArrayList<BootoDto> selectAll() throws Exception; // 상품정보 불러오기
	public void update(Map<String, String> map) throws Exception;
	//public List<BootoDto> listSearch(PageMaker pm)throws Exception;
	//public int listSearchCount(PageMaker pm)throws Exception;

	
}
