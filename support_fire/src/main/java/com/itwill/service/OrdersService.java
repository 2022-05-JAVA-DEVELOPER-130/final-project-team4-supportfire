package com.itwill.service;

import java.util.List;

import com.itwill.dto.Orders;

public interface OrdersService {

	Orders selectByIdPurchase(String m_id) throws Exception;
	
	Orders selectByIdSell(String m_id) throws Exception;
	
	Orders selectByNo(int o_no) throws Exception;
	
	List<Orders> selectAll() throws Exception;
	
	int deleteByNo(int o_no) throws Exception;
	
	int updateByNo(Orders orders) throws Exception;
	
	int insertOrder(Orders orders) throws Exception;
}
