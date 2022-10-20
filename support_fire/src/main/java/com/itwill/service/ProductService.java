package com.itwill.service;

import java.util.List;
import java.util.Map;

import com.itwill.common.ProductPageMakerDto;
import com.itwill.dto.PDDTO;
import com.itwill.dto.Product;

public interface ProductService {
	
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
	
	//제품명 검색
	List<Product> searchAll(String p_name);
	
	//제품 총 갯수
	public int product_countAll();
	
	//제품 리스트 출력
	public List<Product> selectAll();
	
	//상품 전체출력(페이징)
	ProductPageMakerDto<Product> selectAll_p(int currentPage);

	List<Product> selectBrands(int br_no);
}