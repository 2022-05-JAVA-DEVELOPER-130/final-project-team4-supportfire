package com.itwill.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.dto.Product;
import com.itwill.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	private Product product;
	public ProductController() {
		//System.out.println("생성자 생성 test");
	}
	@RequestMapping("/product_list")
	public String product_list(HttpServletRequest request) {
		String forwardPath = "";
		List<Product> productList = productService.selectAll();
		request.setAttribute("productList", productList);
		forwardPath = "shop";
		return forwardPath;
	}
}



