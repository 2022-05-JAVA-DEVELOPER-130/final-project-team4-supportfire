package com.itwill.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.dto.Product;
import com.itwill.mapper.ProductMapper;

@Repository
public class ProductDaoImp implements ProductDao{
	@Autowired
	private ProductMapper productMapper;
	
	@Override
	public int insert(Product product) {
		return productMapper.insert(product);
	}
	@Override
	public int delete(int p_no) {
		return productMapper.delete(p_no);
	}
	/*
	@Override
	public Product selectByNo(int p_no) {
		return productMapper.selectByNo(p_no);
	}
	*/
}
