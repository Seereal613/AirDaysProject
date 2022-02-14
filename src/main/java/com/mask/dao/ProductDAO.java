package com.mask.dao;

import java.util.List;

import com.mask.dto.ProductDTO;
import com.mask.dto.WishlistDTO;

public interface ProductDAO {
	public void create(ProductDTO vo) throws Exception;
	
	public ProductDTO read(String productNum) throws Exception;

	public void update(ProductDTO vo) throws Exception;

	public void delete(int pno) throws Exception;
	
	public List<ProductDTO> list() throws Exception;
	//마스크분류
	public List<ProductDTO> listDesc() throws Exception;	
	public List<ProductDTO> listSlim() throws Exception;
	public List<ProductDTO> listKF94() throws Exception;
	public List<ProductDTO> listBM() throws Exception;
	public List<ProductDTO> listFree() throws Exception;
	//장바구니에 입력
	public void insertOrder(WishlistDTO wdto) throws Exception;
	
}
