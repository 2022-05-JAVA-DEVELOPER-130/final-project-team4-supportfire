package com.itwill.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.dao.ProductSizeDao;
import com.itwill.dto.ProductSize;

@Service
public class ProductSizeServiceImp implements ProductSizeService{
	@Autowired
	private ProductSizeDao productSizeDao;

	@Override
	public int insert(ProductSize productSize) {
		return productSizeDao.insert(productSize);
	}

	@Override
	public int delete(int ps_no) {
		return productSizeDao.delete(ps_no);
	}

	@Override
	public ProductSize selectByNo(int ps_no) {
		return productSizeDao.selectByNo(ps_no);
	}

	@Override
	public List<ProductSize> selectByNoAll(int p_no) {
		return productSizeDao.selectByNoAll(p_no);
	}
	
	@Override
	public Map selectBuyMinPriceByNo(int p_no) {
		List<Map> map = productSizeDao.selectBuyMinPriceByNo(p_no);
		System.out.println(map);
		Map sizeMap = new HashMap();
		for (Map map2 : map) {
			String size = (String)map2.get("S_SIZE");
			sizeMap.put(size, map2.get("min_price"));
		}
		return sizeMap;
	}	

	@Override
	public Map selectSellMinPriceByNo(int p_no) {
		List<Map> map = productSizeDao.selectSellMinPriceByNo(p_no);
		System.out.println(map);
		Map sizeMap = new HashMap();
		for (Map map2 : map) {
			String size = (String)map2.get("S_SIZE");
			sizeMap.put(size, map2.get("min_price"));
		}
		return sizeMap;
	}

	
}
