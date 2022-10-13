package com.itwill.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.dto.Brands;
import com.itwill.dto.Product;
import com.itwill.service.BrandsService;
import com.itwill.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private BrandsService brandsService;
	
	@RequestMapping("shop")
	public String product_list(HttpServletRequest request, Model model) {
		String forwardPath = "";
		List<Product> productList = productService.selectAll();
		model.addAttribute("productList", productList);
		forwardPath = "shop";
		return forwardPath;
	}
	@RequestMapping(value = "shop-details", params = "p_no")
	public String product_view(@RequestParam int p_no, Model model) {
		String forwardPath = "";
		Product productView = productService.selectByNo(p_no);
		//System.out.println(productView);
		Brands brand = brandsService.selectByNo(productView.getBr_no());
		Map buymin = productService.selectBuyMinPriceByNo(p_no);
		Map sellmin = productService.selectSellMinPriceByNo(p_no);
		if(String.valueOf(buymin.get("min_price")).equals("0")) {
			buymin.put("min_price", "판매입찰");
		}else {
			buymin.put("min_price", String.valueOf(buymin.get("min_price"))+" 원");
		}
		if(String.valueOf(sellmin.get("min_price")).equals("0")) {
			sellmin.put("min_price", "구매입찰");
		}else {
			sellmin.put("min_price", String.valueOf(sellmin.get("min_price"))+" 원");
		}
		System.out.println(buymin);
		model.addAttribute("product", productView);
		model.addAttribute("brand", brand);
		model.addAttribute("buymin", buymin);
		model.addAttribute("sellmin", sellmin);
		forwardPath = "shop-details";
		return forwardPath;
	}
}



