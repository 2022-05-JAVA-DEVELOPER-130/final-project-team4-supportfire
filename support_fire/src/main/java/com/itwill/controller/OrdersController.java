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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.dto.Member;
import com.itwill.dto.Orders;
import com.itwill.service.OrdersService;


@RestController
public class OrdersController {
	
	@Autowired
	private OrdersService ordersService;

	@RequestMapping(value="/rest_orders_purchase_list",params = "m_id")
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
	

}
