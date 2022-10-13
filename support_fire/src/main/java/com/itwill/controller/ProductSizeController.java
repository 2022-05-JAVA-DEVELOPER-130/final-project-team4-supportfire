package com.itwill.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.service.ProductSizeService;
@RestController
public class ProductSizeController {
	@Autowired
	private ProductSizeService productSizeService;
	
}
