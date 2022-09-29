package com.itwill.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.dto.ProductDetail;
import com.itwill.service.ProductDetailService;

@Controller
public class ProductDetailController {
	@Autowired
	private ProductDetailService productDetailService;
	
	@RequestMapping("test")
	public String list(HttpServletRequest request) {
		ProductDetail product = productDetailService.selectByNo(1);
		request.setAttribute("product", product);
		return "test";
		
	}
}
