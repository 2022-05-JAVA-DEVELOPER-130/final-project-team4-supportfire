package com.itwill.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.dto.Product;
import com.itwill.dto.ProductDetail;
import com.itwill.service.ProductDetailService;

@Controller
public class ProductDetailController {
	@Autowired
	private ProductDetailService productDetailService;
	
	@RequestMapping("graph")
	@ResponseBody
	public Map graph(int p_no) {
		System.out.println(p_no);
		Map resultMap = new HashMap();
		int code=0;
		String url="";
		String msg="";
		String data="";
		List<ProductDetail> productDetailList = productDetailService.selectSellListByNo(p_no);
		resultMap.put("code",code);
		resultMap.put("url",url);
		resultMap.put("msg",msg);
		resultMap.put("data", productDetailList);
		return resultMap;
	}
}
