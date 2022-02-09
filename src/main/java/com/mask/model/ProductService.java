package com.mask.model;

import java.util.List;
import com.mask.dto.ProductDTO;

public interface ProductService {

	public void register(ProductDTO vo) throws Exception;
	
	public ProductDTO read(String productNum) throws Exception;

	public void modify(ProductDTO vo) throws Exception;

	public void remove(int pno) throws Exception;
	
	public List<ProductDTO> list() throws Exception;

}
