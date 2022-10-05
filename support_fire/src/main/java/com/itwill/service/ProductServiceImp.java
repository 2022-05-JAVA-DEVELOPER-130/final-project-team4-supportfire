package com.itwill.service;

import java.util.HashMap;
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
	// min_price 값이 null 일때 구매 입찰로 표시 구현중
	@Override
	public List<Map> selectAllMinPrice() {
		/*
		List<Map> map = productDao.selectAllMinPrice();
		Map minPriceMap = new HashMap();
		for (Map map2 : map) {
			int p_no = (int)map2.get("p_no");
			minPriceMap.put(p_no, map2.get("min_price"));
		}
		*/
		return productDao.selectAllMinPrice();
	}
	@Override
	public List<Product> searchAll(String p_name) {
		return productDao.searchAll(p_name);
	}
}
