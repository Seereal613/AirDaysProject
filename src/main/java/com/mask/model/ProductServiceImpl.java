package com.mask.model;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.mask.dao.ProductDAO;
import com.mask.dto.ProductDTO;

@Service
public class ProductServiceImpl implements ProductService{

	@Inject
	private SqlSession sqlSession;
	
	
	@Override
	public void register(ProductDTO pdto) throws Exception {
		ProductDAO dao=sqlSession.getMapper(ProductDAO.class);
		dao.create(pdto);
	}

	@Override
	public ProductDTO read(String productNum) throws Exception {
		ProductDAO dao=sqlSession.getMapper(ProductDAO.class);
		return dao.read(productNum);
	}

	@Override
	public void modify(ProductDTO product) throws Exception {
		ProductDAO dao=sqlSession.getMapper(ProductDAO.class);
		dao.update(product);
	}

	@Override
	public void remove(int pno) throws Exception {
		ProductDAO dao=sqlSession.getMapper(ProductDAO.class);
		dao.delete(pno);
	}

	@Override
	public List<ProductDTO> list() throws Exception {
		ProductDAO dao=sqlSession.getMapper(ProductDAO.class);
		List<ProductDTO> pdto =dao.list();
		return pdto;
	}

	@Override
	public List<ProductDTO> listDesc() throws Exception {
		ProductDAO dao=sqlSession.getMapper(ProductDAO.class);
		List<ProductDTO> pdto =dao.listDesc();
		return pdto;
	}

	@Override
	public List<ProductDTO> listSlim() throws Exception {
		ProductDAO dao=sqlSession.getMapper(ProductDAO.class);
		List<ProductDTO> pdto =dao.listSlim();
		return pdto;
	}

	@Override
	public List<ProductDTO> listKF94() throws Exception {
		ProductDAO dao=sqlSession.getMapper(ProductDAO.class);
		List<ProductDTO> pdto =dao.listKF94();
		return pdto;
	}

	@Override
	public List<ProductDTO> listBM() throws Exception {
		ProductDAO dao=sqlSession.getMapper(ProductDAO.class);
		List<ProductDTO> pdto =dao.listBM();
		return pdto;
	}

	@Override
	public List<ProductDTO> listFree() throws Exception {
		ProductDAO dao=sqlSession.getMapper(ProductDAO.class);
		List<ProductDTO> pdto =dao.listFree();
		return pdto;
	}
	

}
