package com.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.dao.OrdersDao;
import com.itwill.dto.Orders;

@Service
public class OrdersServiceImp implements OrdersService{
	
	@Autowired
	private OrdersDao ordersDao;
	
	public OrdersServiceImp() {
		// TODO Auto-generated constructor stub
	}
	
	public OrdersServiceImp(OrdersDao ordersDao) {
		this.ordersDao = ordersDao;
	}

	public void setOrdersDao(OrdersDao ordersDao) {
		this.ordersDao = ordersDao;
	}

	@Override
	public List<Orders> selectByIdPurchase(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Orders> selectByIdSell(String m_id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Orders selectByNo(int o_no) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Orders> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteByNo(int o_no) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByNo(String o_status, int o_no) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	/**즉시구매,즉시판매,구매입찰,판매입찰  
	 * 즉시구매: 상품디테일에 사이즈가 등록되어 있을경우 재고o, 등록된 가격으로 즉시구매가능>>결제로 이동  
	 * 구매입찰: 즉시구매가 불가능할경우(사이즈재고가 없을경우,원하는 가격이 아닐경우),구매원하는 가격으로 입찰정보 insert??
	 * 즉시판매: 상품디테일에 사이즈가 등록되어있을경우(구매입찰이 등록되어있을경우) 해당하는 가격으로 즉시 판매가능
	 * 판매입찰: 원하는 가격에 판매하고싶을 경우 (구매입찰의 가격이 마음에 안들 경우, 원하는 가격으 입찰정보 insert	 
	 * >>구매입과 판매입찰은 같은 가격으로 등록 불가
	 * >>근데 이걸다 어떻게 구현하지,,주문이 아니라 입찰 테이블에서 이루어 져야 하는건가,,, 아 어렵네    
	 */
	@Override
	public int insertOrder(Orders orders) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	/**
	 * 
	 * 즉시구매: 상품디테일 페이지에서 입찰종류가 판매로 되어있고,입찰가능 상태일때, 해당하는 가격으로 orders테이블에 insert
	 * 즉시판매: 상품디테일 페이지에서 입찰종류가 구매로 되어있고, 입찰가능 상태일때, 해당하는 가격으로 orders insert
	 */
	
	
	
	
	
	

}
