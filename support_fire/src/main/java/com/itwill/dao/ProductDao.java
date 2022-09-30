package com.itwill.dao;

import com.itwill.dto.Product;

public interface ProductDao {
	//상품 등록
	int insert(Product product);
	
	//상품삭제
	int delete(int p_no);
}
