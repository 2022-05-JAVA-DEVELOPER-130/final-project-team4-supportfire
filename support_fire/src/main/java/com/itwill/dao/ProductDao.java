package com.itwill.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import com.itwill.dto.Product;

public interface ProductDao {
	//상품 등록
	int insert(Product product);
	
	//상품삭제
	int delete(int p_no);
	
	//상품 1개 조회
	Product selectByNo(int p_no);
	
	//제품 1개 구매최소가격 출력
	Map selectBuyMinPriceByNo(int p_no);
		
	//제품 1개 판매최소가격 출력
	Map selectSellMinPriceByNo(int p_no);
	
	//제품 최소 판매가 전체 출력
	List<Map> selectAllMinPrice();
	
	//제품명 검색
	List<Product> searchAll(String p_name);
	
	List<Product> selectAll();
	/*
	//상품 전체출력
	List<Product> selectAll(int pageStart, int pageEnd) throws Exception;
	*/
}
