package com.itwill.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.dto.Product;
import com.itwill.service.ProductService;
import com.itwill.service.ProductSizeService;

@RestController
public class BidController {
	
	@Autowired
	ProductService productService;
	@Autowired
	ProductSizeService productSizeService;
	
	@RequestMapping("buy_immediately")
	public Map bid_view(int p_no) {
		Map resultMap = new HashMap();
		Map map = new HashMap();
		Map map1 = new HashMap();
		Product product = productService.selectByNo(p_no);
		int code=0;
		String url="";
		String msg="";
		map = productSizeService.selectBuyMinPriceByNo(p_no);
		map1 = productSizeService.selectSellMinPriceByNo(p_no);
		System.out.println(map);
		resultMap.put("code",code);
	    resultMap.put("url",url);
	    resultMap.put("msg",msg);
	    resultMap.put("data", map);
	    resultMap.put("map1", map1);
	    resultMap.put("product", product);
		
		return resultMap;
	}
}
