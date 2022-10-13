package com.itwill.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.dto.Orders;
import com.itwill.mapper.OrdersMapper;

@Repository
public class OrdersDaoImp implements OrdersDao {
	
	@Autowired
	private OrdersMapper ordersMapper;
	
	public OrdersDaoImp() {
		// TODO Auto-generated constructor stub
	}
	
	
	public void setOrdersMapper(OrdersMapper ordersMapper) {
		this.ordersMapper = ordersMapper;
	}


	@Override
	public List<Orders> selectByIdPurchase(String m_id) throws Exception {
		return ordersMapper.selectByIdPurchase(m_id);
	}

	@Override
	public List<Orders> selectByIdSell(String m_id) throws Exception {
		return ordersMapper.selectByIdSell(m_id);
	}

	@Override
	public Orders selectByNo(int o_no) throws Exception {
		return ordersMapper.selectByNo(o_no);
	}

	@Override
	public List<Orders> selectAll() throws Exception {
		return ordersMapper.selectAll();
	}

	@Override
	public int deleteByNo(int o_no) throws Exception {
		return ordersMapper.deleteByNo(o_no);
	}

	@Override
	public int updateByNo(Orders orders) throws Exception {
		return ordersMapper.updateByNo(orders);
	}

	@Override
	public int insertOrder(Orders orders) throws Exception {
		return ordersMapper.insertOrder(orders);
	}


	@Override
	public int insertSequence(Orders orders) throws Exception {
		ordersMapper.insertSequence(orders);
		return orders.getO_no();
	}

}
