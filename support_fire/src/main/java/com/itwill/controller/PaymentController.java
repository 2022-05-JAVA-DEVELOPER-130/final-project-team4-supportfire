package com.itwill.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.dto.Orders;
import com.itwill.dto.Payment;
import com.itwill.service.PaymentService;

@RestController
public class PaymentController {
	
	@Autowired
	private PaymentService paymentService;
	
	//pm_no로 결제내역조회
	@RequestMapping(value="select_by_pm_no" ,params="pm_no")
	public Payment selet_by_pm_no(@RequestParam int pm_no) throws Exception{
		Payment payment = paymentService.selectByPMNo(pm_no);
		return payment;
	}
	
	//o_no로 결제내역조회
	@RequestMapping(value="select_by_o_no" ,params="o_no")
	public Payment selet_by_o_no(@RequestParam int o_no) throws Exception{
		Payment payment = paymentService.selectByONo(o_no);
		return payment;
	}
	
	//구매내역전체조회
	@RequestMapping(value="payment_list")
	public Map payment_list(Model model ) throws Exception{
		int code=0;
		String url="";
		String msg="";
		List<Payment> data = new ArrayList<Payment>();
		
		List<Payment> paymentList= paymentService.selectAll();
		data.addAll(paymentList);
		code=1;
		msg="성공";
	    url="payment_list";
	    
	    Map resultMap= new HashMap();
	    resultMap.put("code",code);
	    resultMap.put("url",url);
	    resultMap.put("msg",msg);
	    resultMap.put("data",data);
	    
	    return resultMap;
	}
	
	//결제번호로 배송지 업데이트
	@RequestMapping(value="update_by_no")
	public int update_by_no(Payment payment) throws Exception{
		int updateRowCount=paymentService.updateByNo(payment);
		return updateRowCount;
				
	}
	
	//결제번호로결제내역삭제
	@RequestMapping(value="delete_by_no")
	public int delete_by_no(@RequestParam int pm_no) throws Exception{
		int deleteRowCount= paymentService.deleteByNo(pm_no);
		return deleteRowCount;
	}
	
	@RequestMapping(value="insert_payment")
	public int insert_payment(Payment payment) throws Exception{
		int insertRowCount= paymentService.insertPayment(payment);
		return insertRowCount;
	}
	
	
	
}
