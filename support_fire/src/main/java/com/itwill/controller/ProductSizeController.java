package com.itwill.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.dto.Product;
import com.itwill.dto.ProductSize;
import com.itwill.dto.Sizes;
import com.itwill.service.ProductService;
import com.itwill.service.ProductSizeService;
import com.itwill.service.SizesService;

@RestController
public class ProductSizeController {
	
	@Autowired
	private ProductSizeService productSizeService;
	@Autowired
	private ProductService productService;
	@Autowired
	private SizesService sizesService;
	
	@RequestMapping(value = "product_size")
	public Map productSizePrice(int p_no ,int bt_no, int c_no) {
		Map resultMap = new HashMap();
		Map map = new HashMap();
		Product product = productService.selectByNo(p_no);
		int code=0;
		String url="";
		String msg="";
		List<Sizes> sizeList = sizesService.selectAll(c_no);
		if(bt_no==1) {
			code=1;
			msg = "구매하기";
			map = productSizeService.selectSellMinPriceByNo(p_no);
		}else {
			code=2;
			msg = "판매하기";
			map = productSizeService.selectBuyMinPriceByNo(p_no);
		}
		List<String> stringList = new ArrayList<String>();
		for (Sizes sizes : sizeList) {
			String price = String.valueOf(map.get(sizes.getS_size()));
			stringList.add(price);
		}
		
		resultMap.put("code",code);
	    resultMap.put("url",url);
	    resultMap.put("msg",msg);
	    resultMap.put("data", stringList);
	    resultMap.put("sizeList", sizeList);
	    resultMap.put("product", product);
		return resultMap;
	}
}
