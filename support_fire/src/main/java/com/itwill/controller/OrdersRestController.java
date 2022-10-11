package com.itwill.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
import com.itwill.service.OrdersService;


@RestController
public class OrdersRestController {
	
	@Autowired
	private OrdersService ordersService;
	
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
	public Orders select_by_no(@RequestParam int o_no) throws Exception{
		Orders orders = ordersService.selectByNo(o_no);
		return orders;
	}
	
	@PostMapping(value="update_by_no")
	public int update_by_no(Orders orders) throws Exception{
		int updateRowCount=ordersService.updateByNo(orders);
		 return updateRowCount;
				
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
	
	
}
