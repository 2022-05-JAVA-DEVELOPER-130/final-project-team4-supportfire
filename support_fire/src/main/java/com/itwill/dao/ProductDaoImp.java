package com.itwill.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.dto.Product;
import com.itwill.mapper.ProductMapper;

@Repository
public class ProductDaoImp {
	@Autowired
	private ProductMapper productMapper;
	
	public int insert(Product product) {
		return productMapper.insert(product);
	}
}
