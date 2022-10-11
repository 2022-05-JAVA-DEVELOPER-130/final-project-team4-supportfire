package com.itwill.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.dto.Product;
import com.itwill.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "test ")
	@ResponseBody
	public Product test() {
		Product product = productService.selectByNo(1);
		System.out.println("product : " + product);
		return product;
	}
}



