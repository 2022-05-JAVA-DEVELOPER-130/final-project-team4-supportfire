package com.itwill.controller;

import java.util.Date;
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
import com.itwill.dto.Member;
import com.itwill.dto.Product;
import com.itwill.dto.ProductDetail;
import com.itwill.dto.ProductSize;
import com.itwill.service.BrandsService;
import com.itwill.service.MemberService;
import com.itwill.service.ProductDetailService;
import com.itwill.service.ProductService;
import com.itwill.service.ProductSizeService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private BrandsService brandsService;
	@Autowired
	private ProductDetailService productDetailService;
	@Autowired
	private ProductSizeService productSizeService;
	@Autowired
	private MemberService memberService;


	@RequestMapping("shop")
	public String product_list(HttpServletRequest request, Model model) {
		String forwardPath = "";
		List<Product> productList = productService.selectAll();
		Map price = productService.selectAllMinPrice();
		model.addAttribute("productList", productList);
		model.addAttribute("price", price);
		System.out.println(productList.get(1).getP_no());
		System.out.println(price.get(productList.get(1).getP_no()));
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
		if(String.valueOf(buymin.get("min_price")).equals("null")){
			buymin.put("min_price", "판매입찰");
		}else {
			buymin.put("min_price", "즉시판매가 : " + String.valueOf(buymin.get("min_price"))+" 원");
		}
		if(String.valueOf(sellmin.get("min_price")).equals("null")) {
			sellmin.put("min_price", "구매입찰");
		}else {
			sellmin.put("min_price", "즉시구매가 : " + String.valueOf(sellmin.get("min_price"))+" 원");
		}
		model.addAttribute("product", productView);
		model.addAttribute("brand", brand);
		model.addAttribute("buymin", buymin);
		model.addAttribute("sellmin", sellmin);
		forwardPath = "shop-details";
		return forwardPath;
	}
	
	@RequestMapping(value = "payment", params = "pd_no")
	public String product_view_payment(@RequestParam int pd_no, Model model,HttpServletRequest request) throws Exception{
		String forwardPath = "";
		ProductDetail productDetail = productDetailService.selectByNo(pd_no);
		String sUserId=(String)request.getSession().getAttribute("sUserId");
		request.getSession().setAttribute("sUserId", sUserId);
		Member member = memberService.selectById(sUserId);
		model.addAttribute("member", member);
		if(productDetail.getBt_no() == 2) {
			Product product = productService.selectByNo(productDetail.getProductsize().getProduct().getP_no());
			ProductSize productSize=productSizeService.selectByNo(productDetail.getProductsize().getPs_no());
			//System.out.println(productView);
			model.addAttribute("product", product);
			model.addAttribute("productDetail",productDetail);
			model.addAttribute("productSize",productSize);
			forwardPath= "payment";
		}else {
			Product product = productService.selectByNo(productDetail.getProductsize().getProduct().getP_no());
			ProductSize productSize=productSizeService.selectByNo(productDetail.getProductsize().getPs_no());
			//System.out.println(productView);
			model.addAttribute("product", product);
			model.addAttribute("productDetail",productDetail);
			model.addAttribute("productSize",productSize);
			
			forwardPath= "sell";
		}
		
		
		return forwardPath;
	}
	
	
		
   
	@RequestMapping("bid")
	public String product_bid_payment(@RequestParam int p_no,int bt_no,int c_no,String s_size,int price,Model model,HttpServletRequest request) throws Exception{
		
		System.out.println("dka"+p_no);
		System.out.println(bt_no);
		System.out.println(c_no);
		System.out.println(s_size);
		System.out.println(price);
		String sUserId=(String)request.getSession().getAttribute("sUserId");
		request.getSession().setAttribute("sUserId", sUserId);
		Member member = memberService.selectById(sUserId);
		model.addAttribute("member", member);
		Product product = productService.selectByNo(p_no);
		int ps_no = productSizeService.selectByPnoSize(p_no, s_size);
		ProductSize productSize = productSizeService.selectByNo(ps_no);
		ProductDetail insertPd= new ProductDetail(0,product.getP_price(),null,null,new ProductSize(ps_no,s_size, product),sUserId,bt_no,1);
		int insertProductDetail = productDetailService.insert(insertPd);
		model.addAttribute("product", product);
		System.out.println(product);
		
		model.addAttribute("productDetail", insertPd);
		System.out.println(insertPd);
		
		return "payment";
	}
	
	@RequestMapping(value="mapage" )
	public String purchase_sell_list(HttpServletRequest request,Model model) throws Exception {
		String sUserId=(String)request.getSession().getAttribute("sUserId");
		request.getSession().setAttribute("sUserId", sUserId);
		Member member = memberService.selectById(sUserId);
		model.addAttribute("member", member);
		System.out.println(member);
		List<ProductDetail> productDetail=  productDetailService.selectById(sUserId);
		model.addAttribute("ProductDetail", productDetail);
		return "mypage";
	}
}



