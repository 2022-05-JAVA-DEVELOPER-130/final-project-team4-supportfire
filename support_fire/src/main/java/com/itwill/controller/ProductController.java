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
	
	@RequestMapping("shop")
	public String product_list(HttpServletRequest request, Model model) {
		String forwardPath = "";
		List<Product> productList = productService.selectAll();
		System.out.println(productList);
		model.addAttribute("productList", productList);
		forwardPath = "shop";
		return forwardPath;
	}
}



