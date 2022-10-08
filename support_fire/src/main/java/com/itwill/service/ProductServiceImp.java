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
	public Map selectAllMinPrice() {
		List<Map> map1 = productDao.selectAllMinPrice();
		Map minPriceMap = new HashMap();
		for (Map map : map1) {
			String p_no = String.valueOf(map.get("p_no"));
			String p_price = String.valueOf(map.get("min_price"));
			if(p_price == "null") {
				p_price = "구매입찰";
				minPriceMap.put(p_no, p_price);
			} else {
				minPriceMap.put(p_no, p_price);
			}
			
		}
			return minPriceMap;
	}
	@Override
	public List<Product> searchAll(String p_name) {
		return productDao.searchAll(p_name);
	}
}
