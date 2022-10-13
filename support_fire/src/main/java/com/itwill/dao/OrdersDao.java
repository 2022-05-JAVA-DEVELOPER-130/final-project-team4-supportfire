package com.itwill.dao;

import java.util.List;

import com.itwill.dto.Orders;

public interface OrdersDao {
	
	List<Orders> selectByIdPurchase(String m_id) throws Exception;
	
	List<Orders> selectByIdSell(String m_id) throws Exception;
	
	Orders selectByNo(int o_no) throws Exception;
	
	List<Orders> selectAll() throws Exception;
	
	int deleteByNo(int o_no) throws Exception;
	
	int updateByNo(Orders orders) throws Exception;
	
	int insertOrder(Orders orders) throws Exception;
	
	int insertSequence(Orders orders) throws Exception;
}
