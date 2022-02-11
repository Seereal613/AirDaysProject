package com.mask.dao;

import java.util.ArrayList;

import com.mask.dto.OrderDto2;
import com.mask.dto.OrderDto3;
import com.mask.dto.OrderDto;

public interface IOrderDao {
	public void insert(OrderDto2 dto) throws Exception;
	
	public void update(OrderDto2 dto) throws Exception;
	
	public void stateUpdate(OrderDto2 dto) throws Exception;
	
	public void delete(String orderNum) throws Exception;
	
	public ArrayList<OrderDto> selectAll() throws Exception;

	public OrderDto selectUserID(String userID) throws Exception;
	
	public ArrayList<OrderDto> selectInfo() throws Exception;
	
	public ArrayList<OrderDto2> selectOrder() throws Exception;
	
	public ArrayList<OrderDto3> selctOrderDetail(String orderNum) throws Exception;

}
