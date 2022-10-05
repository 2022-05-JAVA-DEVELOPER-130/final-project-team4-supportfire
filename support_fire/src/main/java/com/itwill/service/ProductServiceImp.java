package com.itwill.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.itwill.dao.ProductDao;
import com.itwill.dto.Product;

public class ProductServiceImp implements ProductService{
	
	@Autowired
	private ProductDao productDao;
	
	@Override
	public int insert(Product product) {
		return productDao.insert(product);
	}

	@Override
	public int delete(int p_no) {
		return productDao.delete(p_no);
	}

	@Override
	public Product selectByNo(int p_no) {
		return productDao.selectByNo(p_no);
	}

	@Override
	public Map selectBuyMinPriceByNo(int p_no) {
		return productDao.selectBuyMinPriceByNo(p_no);
	}

	@Override
	public Map selectSellMinPriceByNo(int p_no) {
		return productDao.selectSellMinPriceByNo(p_no);
	}

	@Override
	public List<Product> selectAll() {
		return productDao.selectAll();
	}
	/* 작성중
	public void check () {
		g
		String a = "구매 입찰";
		if(min_price == null) {
			
		 }
	}
	*/
	@Override
	public List<Map> selectAllMinPrice() {
		return productDao.selectAllMinPrice();
	}

	@Override
	public List<Product> searchAll(String p_name) {
		return productDao.searchAll(p_name);
	}
}
