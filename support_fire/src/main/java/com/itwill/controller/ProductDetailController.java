package com.itwill.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.itwill.service.ProductDetailService;

@Controller
public class ProductDetailController {
	@Autowired
	private ProductDetailService productDetailService;
	
	
}
