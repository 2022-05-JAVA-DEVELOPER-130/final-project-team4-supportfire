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
	
	/**즉시구매,즉시판매,구매입찰
	 * 즉시구매: 상품디테일에 사이즈가 등록되어 있을경우 재고o, 등록된 가격으로 즉시구매가능>>결제로 이
	 * 구매입찰: 즉시구매가 불가능할경우(사이즈재고가 없을경우),원하는 가격으로 입찰정보 insert??이걸 어떻게 서비스에서 구현하지,,
	 *         만약, 구매하고 싶은가격이(구매입찰가가 productDetail에 등록되어있을경우), 판매하고싶은 가격(판매입찰) 이 동일할때 
	 *         주문으로 구매할 수 있을거 같은데 아,,, 너무 어렵다,,,,
	 * 즉시판매: 이건 productDetail에서 상품등록 하는게 즉시 판매일듯,,
	 * 
	 * 
	 * 
	 */
	@Override
	public int insertOrder(Orders orders) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	
	
	
	
	

}
