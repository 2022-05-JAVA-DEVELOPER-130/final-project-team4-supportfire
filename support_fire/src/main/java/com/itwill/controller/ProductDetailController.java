package com.itwill.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.dto.ProductDetail;
import com.itwill.service.ProductDetailService;

@Controller
public class ProductDetailController {
	@Autowired
	private ProductDetailService productDetailService;
	
	@RequestMapping(value = "test")
	@ResponseBody
	public ProductDetail test() {
		ProductDetail product = productDetailService.selectByNo(1);
		System.out.println("product : " + product);
		return product;
		
	}
}
