package com.itwill.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.dto.Member;
import com.itwill.dto.Orders;
import com.itwill.dto.Payment;
import com.itwill.dto.ProductDetail;
import com.itwill.service.MemberService;
import com.itwill.service.OrdersService;
import com.itwill.service.PaymentService;
import com.itwill.service.ProductDetailService;


@RestController
public class OrdersRestController {
	
	@Autowired
	private OrdersService ordersService;
	@Autowired
	private ProductDetailService productDetailService;
	@Autowired
	private PaymentService paymentService;
	@Autowired
	private MemberService memberservice;
	
	//구매내역
	@RequestMapping(value="orders_purchase_list")
	public Map orders_purchase_list(@RequestParam String m_id,Model model ) throws Exception{
		int code=0;
		String url="";
		String msg="";
		List<Orders> data = new ArrayList<Orders>();
		
		List<Orders> ordersList= ordersService.selectByIdPurchase(m_id);
		data.addAll(ordersList);
		code=1;
		msg="성공";
	    url="orders_purchase_list";
	    
	    Map resultMap= new HashMap();
	    resultMap.put("code",code);
	    resultMap.put("url",url);
	    resultMap.put("msg",msg);
	    resultMap.put("data",data);
	    
	    return resultMap;
	}
	
	//판매내역
	@RequestMapping(value="orders_sell_list")
	public Map orders_sell_list(@RequestParam String m_id,Model model ) throws Exception{
		int code=0;
		String url="";
		String msg="";
		List<Orders> data = new ArrayList<Orders>();
		
		List<Orders> ordersList= ordersService.selectByIdSell(m_id);
		data.addAll(ordersList);
		code=1;
		msg="성공";
	    url="orders_sell_list";
	    
	    Map resultMap= new HashMap();
	    resultMap.put("code",code);
	    resultMap.put("url",url);
	    resultMap.put("msg",msg);
	    resultMap.put("data",data);
	    
	    return resultMap;
	}
	
	//전체내역
	@RequestMapping(value="orders_list")
	public Map orders_list(Model model ) throws Exception{
		int code=0;
		String url="";
		String msg="";
		List<Orders> data = new ArrayList<Orders>();
		
		List<Orders> ordersList= ordersService.selectAll();
		data = (ordersList);
		code=1;
		msg="성공";
	    url="orders_list";
	    
	    Map resultMap= new HashMap();
	    resultMap.put("code",code);
	    resultMap.put("url",url);
	    resultMap.put("msg",msg);
	    resultMap.put("data",data);
	    
	    return resultMap;
	}
	
	@RequestMapping(value="orders_select_by_no")
	public String select_by_no(@RequestParam int o_no) throws Exception{
		Orders orders = ordersService.selectByNo(o_no);
		return "orders_select_by_no";
	}
	
	@RequestMapping(value="update_by_no")
	public String update_by_no(Orders orders) throws Exception{
		int updateRowCount=ordersService.updateByNo(orders);
		 return "update_by_no";
				
	}
	
	
	@RequestMapping(value="orders_delete_by_no")
	public Map delete_by_no(@RequestParam int o_no) throws Exception{
		int code=0;
		String url="";
		String msg="";
		List<Orders> data = new ArrayList<Orders>();
		int rowCount= ordersService.deleteByNo(o_no);
		Map resultMap= new HashMap();
		resultMap.put("code", code);
		resultMap.put("url", url);
		resultMap.put("msg", msg);
		resultMap.put("data",data);
		return resultMap;
	}
	/*
	 * 원래 판매자정보(productDetail)에 저장되어있음
	 * 그걸 기본키로 가져와서 구매자와,입찰정보만 바꿔서 다시 프로덕트 디테일에 인서트
	 * 아이디와 입찰정보구매자정보로 셋
	 * 새로 프로덕트 디테일로 인서트 
	 * 원래있던판매자 정보와ㅓ 새로 만들어진 구매자정보로 오더생성 후 인서
	 */
	@RequestMapping(value="orders_purchase")
	public Orders insert_orders_purchase(int pd_no,HttpServletRequest request) throws Exception{
		//즉시구매
		//원래있던 판매자의 pd_no 가져옴
		System.out.println(pd_no);
		ProductDetail newProductDetail  = productDetailService.selectByNo(pd_no);
		System.out.println(newProductDetail);
		//구매자의 정보 셋팅
		String sUserId=(String)request.getSession().getAttribute("sUserId");
		request.getSession().setAttribute("sUserId", sUserId);
		newProductDetail.setM_id("seongmin");
		newProductDetail.setBt_no(1);
		newProductDetail.setB_no(3);
		System.out.println(newProductDetail);
		//pd에 새로 인서트
		int insertRowCount=productDetailService.insertSequence(newProductDetail);
		//새로운오더 즉시구매오더생성
		
		Orders purchaseOrders= new Orders(0, null,insertRowCount, pd_no, "배송준비중");
		int insertOrders=ordersService.insertSequence(purchaseOrders);
		System.out.println(purchaseOrders);
		
		//결제생성
		Member member=memberservice.selectById("seongmin");
		System.out.println(member);
		Payment purchasePayment= new Payment(0, member.getM_name(),member.getM_phone(),member.getM_address(),"",insertOrders,1);
		int insertpayment=paymentService.insertPayment(purchasePayment);
		
		return purchaseOrders;
	}
	
	
	@RequestMapping(value="orders_sell")
	public Orders insert_orders_sell (int pd_no,HttpServletRequest request) throws Exception{
		
		System.out.println(pd_no);
		ProductDetail newProductDetail  = productDetailService.selectByNo(pd_no);
		System.out.println(newProductDetail);
		
		String sUserId=(String)request.getSession().getAttribute("sUserId");
		request.getSession().setAttribute("sUserId", sUserId);
		newProductDetail.setM_id("seongmin");
		newProductDetail.setBt_no(2);
		newProductDetail.setB_no(3);
		System.out.println(newProductDetail);
		
		int insertRowCount=productDetailService.insertSequence(newProductDetail);
		
		
		Orders sellOrders= new Orders(0, null,pd_no, insertRowCount, "발송준비중");
		int insertOrders=ordersService.insertSequence(sellOrders);
		
		Member member=memberservice.selectById("seongmin");
		System.out.println(member);
		Payment sellPayment= new Payment(0, member.getM_name(),member.getM_phone(),member.getM_address(),"",insertOrders,1);
		int insertpayment=paymentService.insertPayment(sellPayment);
	
		return sellOrders;
	}
}
