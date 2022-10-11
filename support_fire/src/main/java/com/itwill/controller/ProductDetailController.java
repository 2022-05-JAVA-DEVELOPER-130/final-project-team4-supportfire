package com.itwill.controller;


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
	
	@RequestMapping ("shop_detail")
	public String productDetail_view(@RequestParam int pd_no, HttpServletRequest request, Model model) {
	String forwardPath = "";
	ProductDetail productDetail = productDetailService.selectByNo(pd_no);
	model.addAttribute("productDetail", productDetail);
	forwardPath = "shop_detail";
	return forwardPath;
	}
}
