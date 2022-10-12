package com.itwill.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	@RequestMapping(value = "shop-details", params = "p_no")
	public String product_view(@RequestParam int p_no, Model model) {
		String forwardPath = "";
		Product productView = productService.selectByNo(p_no);
		System.out.println(productView);
		model.addAttribute("productView", productView);
		forwardPath = "shop-details";
		return forwardPath;
	}
}



