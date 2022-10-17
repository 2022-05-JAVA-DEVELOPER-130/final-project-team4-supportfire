package com.itwill.service;

import java.util.List;
import java.util.Map;

import com.itwill.dto.ProductSize;

public interface ProductSizeService {

	//제품 size 추가
	int insert(ProductSize productSize);
	
	//ps_no로 제품 삭제
	int delete(int ps_no);
	
	//ps_no로 사이즈 1개 출력
	ProductSize selectByNo(int ps_no);
	
	//제품 번호로 사이즈 전체출력
	List<ProductSize> selectByNoAll(int p_no);
	
	//제품 사이즈 구매 최소 가격 출력
	Map selectBuyMinPriceByNo(int p_no);
	
	//제품 사이즈 판매 최소 가격 출력
	Map selectSellMinPriceByNo(int p_no);
	
	//제품번호와 사이즈로 프로덕트 ps_no 찾기
	int selectByPnoSize(int p_no, String s_size);
}
