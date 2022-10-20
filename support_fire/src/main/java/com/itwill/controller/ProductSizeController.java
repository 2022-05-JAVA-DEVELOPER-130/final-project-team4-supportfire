package com.itwill.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.dto.PDDTO;
import com.itwill.dto.Product;
import com.itwill.dto.ProductDetail;
import com.itwill.dto.ProductSize;
import com.itwill.dto.Sizes;
import com.itwill.service.ProductDetailService;
import com.itwill.service.ProductService;
import com.itwill.service.ProductSizeService;
import com.itwill.service.SizesService;

@RestController
public class ProductSizeController {
	
	@Autowired
	private ProductSizeService productSizeService;
	@Autowired
	private ProductService productService;
	@Autowired
	private SizesService sizesService;
	@Autowired
	private ProductDetailService productDetailService;
	
	@RequestMapping(value = "product_size")
	public Map productSizePrice(int p_no ,int bt_no, int c_no) {
		Map resultMap = new HashMap();
		Map map = new HashMap();
		Product product = productService.selectByNo(p_no);
		int code=0;
		String url="";
		String msg="";
		List<Sizes> sizeList = sizesService.selectAll(c_no);
		if(bt_no==1) {
			code=1;
			msg = "구매하기";
			map = productSizeService.selectSellMinPriceByNo(p_no);
		}else {
			code=2;
			msg = "판매하기";
			map = productSizeService.selectBuyMinPriceByNo(p_no);
		}
		List<PDDTO> stringList = new ArrayList<PDDTO>();
		for (Sizes sizes : sizeList) {
			PDDTO pddto = new PDDTO(String.valueOf(map.get(sizes.getS_size()+"1")), String.valueOf(map.get(sizes.getS_size())));
			stringList.add(pddto);
		}
		resultMap.put("code",code);
	    resultMap.put("url",url);
	    resultMap.put("msg",msg);
	    resultMap.put("data", stringList);
	    resultMap.put("sizeList", sizeList);
	    resultMap.put("product", product);
		return resultMap;
	}
	
	
	@RequestMapping("sizeClick_p")
	public Map sizeClick_p(Integer pd_no, int p_no, int bt_no, int c_no, int s_size) {
		
		Map resultMap = new HashMap();
		int code=0;
		String url="";
		String msg="";
		String data="";
		Product product = productService.selectByNo(p_no);
		int productSize = s_size;
		String buymin= String.valueOf(productSizeService.selectBuyMinPriceByNo(p_no).get(s_size+""));
		if(buymin.equals("null")){
			buymin = "-";
		}
		if(buymin.equals("판매입찰")){
			buymin = "-";
		}
		ProductDetail productDetail = productDetailService.selectByNo(pd_no);
		
		
		
		
		resultMap.put("productDetail", productDetail);
		resultMap.put("code",code);
	    resultMap.put("url",url);
	    resultMap.put("msg",msg);
	    resultMap.put("product", product);
	    resultMap.put("productSize", productSize);
	    resultMap.put("buymin", buymin);
		return resultMap;
	}
	
	@RequestMapping("sizeClick_p_null")
	public Map sizeClick_p_null(int p_no, int bt_no, int c_no, int s_size) {
		
		Map resultMap = new HashMap();
		int code=0;
		String url="";
		String msg="";
		String data="";
		Product product = productService.selectByNo(p_no);
		int productSize = s_size;
		String buymin= String.valueOf(productSizeService.selectBuyMinPriceByNo(p_no).get(s_size+""));
		if(buymin.equals("null")){
			buymin = "-";
		}
		if(buymin.equals("판매입찰")){
			buymin = "-";
		}
		
		resultMap.put("code",code);
		resultMap.put("url",url);
		resultMap.put("msg",msg);
		resultMap.put("product", product);
		resultMap.put("productSize", productSize);
		resultMap.put("buymin", buymin);
		return resultMap;
	}
	
	
	@RequestMapping("sizeClick_s")
	public Map sizeClick_s(Integer pd_no, int p_no, int bt_no, int c_no, int s_size) {
		Map resultMap = new HashMap();
		int code=0;
		String url="";
		String msg="";
		String data="";
		Product product = productService.selectByNo(p_no);
		int productSize = s_size;
		String buymin= String.valueOf(productSizeService.selectSellMinPriceByNo(p_no).get(s_size+""));
		if(buymin.equals("null")){
			buymin = "-";
		}
		if(buymin.equals("구매입찰")){
			buymin = "-";
		}
		ProductDetail productDetail = productDetailService.selectByNo(pd_no);
		
		resultMap.put("code",code);
		resultMap.put("url",url);
		resultMap.put("msg",msg);
		resultMap.put("product", product);
		resultMap.put("productDetail", productDetail);
		resultMap.put("productSize", productSize);
		resultMap.put("buymin", buymin);
		return resultMap;
	}
	
	@RequestMapping("sizeClick_s_null")
	public Map sizeClick_s_null(int p_no, int bt_no, int c_no, int s_size) {
		Map resultMap = new HashMap();
		int code=0;
		String url="";
		String msg="";
		String data="";
		Product product = productService.selectByNo(p_no);
		int productSize = s_size;
		String buymin= String.valueOf(productSizeService.selectBuyMinPriceByNo(p_no).get(s_size+""));
		if(buymin.equals("null")){
			buymin = "-";
		}
		if(buymin.equals("판매입찰")){
			buymin = "-";
		}
		
		resultMap.put("code",code);
		resultMap.put("url",url);
		resultMap.put("msg",msg);
		resultMap.put("product", product);
		resultMap.put("productSize", productSize);
		resultMap.put("buymin", buymin);
		return resultMap;
	}
	
	
	
	
	
}
