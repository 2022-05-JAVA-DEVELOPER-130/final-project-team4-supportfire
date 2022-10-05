package com.itwill.service;

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
		return 0;
	}

	@Override
	public int delete(int ps_no) {
		return 0;
	}

	@Override
	public ProductSize selectByNo(int ps_no) {
		return null;
	}

	@Override
	public List<Map> selectBuyMinPriceByNo(int p_no) {
		List<Map> map = productSizeDao.selectBuyMinPriceByNo(p_no);
		
		for (Map map2 : map) {
			map2.get("pd_no");
		}
		return map;
	}

	@Override
	public List<Map> selectSellMinPriceByNo(int p_no) {
		return null;
	}
	
}
