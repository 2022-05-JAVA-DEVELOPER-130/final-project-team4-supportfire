package com.itwill.service;

import java.util.List;

import com.itwill.dto.Orders;

public interface OrdersService {
	//고객한명구매내역전체보기
	List<Orders> selectByIdPurchase(String m_id) throws Exception;
	
	//고객한명판매내역전체보기
	List<Orders> selectByIdSell(String m_id) throws Exception;
	
	//주문번호로주문한개조회
	Orders selectByNo(int o_no) throws Exception;
	
	//주문전체조회
	List<Orders> selectAll() throws Exception;
	
	//주문번호한개삭제
	int deleteByNo(int o_no) throws Exception;
	
	//주문정보한개업데이트(주문상태변경)
	int updateByNo(String o_status,int o_no) throws Exception;
	
	//주문한개생성
	int insertOrder(Orders orders) throws Exception;
}
