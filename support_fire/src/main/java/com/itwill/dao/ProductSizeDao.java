package com.itwill.dao;

import java.util.Map;

import com.itwill.dto.ProductSize;

public interface ProductSizeDao {
	//ps_no로 제품 삭제
	int delete(int ps_no);
	
	//ps_no로 사이즈 1개 출력
	ProductSize selectByNo(int ps_no);
	
	//제품 사이즈 구매 최소 가격 출력
	Map selectBuyMinPriceBySize(int p_no, String s_size);
	
	//제품 1개 판매최소가격 출력
	Map selectSellMinPriceBySize(int p_no, String s_size);
}
