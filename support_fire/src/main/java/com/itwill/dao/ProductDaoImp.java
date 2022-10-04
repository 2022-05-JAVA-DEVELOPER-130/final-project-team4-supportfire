package com.itwill.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	@Override
	public Product selectByNo(int p_no) {
		return productMapper.selectByNo(p_no);
	}
	
	@Override
	public Map selectBuyMinPriceByNo(int p_no) {
		return productMapper.selectBuyMinPriceByNo(p_no);
	}
	
	@Override
	public Map selectSellMinPriceByNo(int p_no) {
		return productMapper.selectSellMinPriceByNo(p_no);
	}
	
	@Override
	public List<Product> selectAll() {
		return productMapper.selectAll();
	}
	@Override
	public List<Map> selectAllMinPrice() {
		return productMapper.selectAllMinPrice();
	}
	@Override
	public List<Product> searchAll(String p_name) {	
		return productMapper.searchAll(p_name);
	}
	
}