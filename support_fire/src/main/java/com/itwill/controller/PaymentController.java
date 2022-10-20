package com.itwill.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.dto.Address;
import com.itwill.dto.Member;
import com.itwill.dto.Orders;
import com.itwill.dto.Payment;
import com.itwill.service.AddressService;
import com.itwill.service.MemberService;
import com.itwill.service.PaymentService;

@RestController
public class PaymentController {
	
	@Autowired
	private PaymentService paymentService;
	@Autowired
	private MemberService memberService;
	@Autowired
	private AddressService addressService;
	
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
	
	@RequestMapping(value = "/payment_modify_form",
			produces = "application/json;charset=UTF-8")
	public Map payment_modify_form(@RequestParam int pm_no) {
		Map resultMap=new HashMap();
		int code=2;
		String url="";
		String msg="";
		
		List<Payment> resultList=new ArrayList<Payment>();
		try {
			code=1;
			url="";
			msg="";
			Payment payment=paymentService.selectByPMNo(pm_no);
			
			resultList.add(payment);
		} catch (Exception e) {
			code=2;
			url="";
			msg="수정폼실패";
			e.printStackTrace();
		}
		resultMap.put("code", code);
		resultMap.put("url", url);
		resultMap.put("msg", msg);
		resultMap.put("data",resultList);
		
		return resultMap;
	}
	
	
	//아이디로 기본 배송지 업데이트
	@RequestMapping("address_modify_action")
	public Map payment_modify_action( String m_phone, String sample4_roadAddress,HttpServletRequest request) throws Exception{
		Map resultMap=new HashMap();
		int code=1;
		String url="";
		String msg="";
		String data="";
		String sUserId=(String)request.getSession().getAttribute("sUserId");
		request.getSession().setAttribute("sUserId", sUserId);
		Member member = memberService.selectById(sUserId);
		Member updatemember=new Member(sUserId,member.getM_password(),member.getM_name(),m_phone,member.getM_birth(),
				member.getM_email(),member.getM_gender(),member.getM_point(),sample4_roadAddress);
		 int updateMember=memberService.updateMember(updatemember);
		 
		try {
			code=1;
			url="";
			msg="배송지가 변경되었습니다.";
			
		} catch (Exception e) {
			code=2;
			url="";
			msg="수정실패";
			e.printStackTrace();
		}
		resultMap.put("code", code);
		resultMap.put("url", url);
		resultMap.put("msg", msg);
		resultMap.put("data",updatemember);
		
		return resultMap;
	}
	
	//결제번호로결제내역삭제
	//@RequestMapping(value="delete_by_no")
	public String delete_by_no(@RequestParam int pm_no) throws Exception{
		int deleteRowCount= paymentService.deleteByNo(pm_no);
		return "delete_by_no";
	}
	
	/**
	 * 구매하기
	 * 해당제품의 pd_no 구매하면 판매자의pd_no 나옴
	 * 결제가 이루어진 다음에 
	 * 원래있던 판매자정보와 구매하기의 구매자정보 넣어서 오더 생성
	 */
	@RequestMapping(value="address")
	public String insert_payment(Payment payment ) throws Exception{
		int insertRowCount=paymentService.insertPayment(payment);
		return "address";
	}
	
	@RequestMapping("address_btn")
	public Map address_btn(String m_id, String m_phone, String sample4_roadAddress) {
		Map resultMap=new HashMap();
		int code=2;
		String url="";
		String msg="";
		String address = sample4_roadAddress;
		
		
		resultMap.put("code", code);
		resultMap.put("url", url);
		resultMap.put("msg", msg);
		resultMap.put("m_id",m_id);
		resultMap.put("m_phone",m_phone);
		resultMap.put("address",address);
		
		return resultMap;
	}
	
	@RequestMapping("check_address")
	public Map check_address(HttpSession session) {
		Map resultMap=new HashMap();
		int code=0;
		String url="";
		String msg="";
		String sUserId = (String)session.getAttribute("sUserId");
		Address address = addressService.selectMainAddr(sUserId);
		
		
		resultMap.put("code", code);
		resultMap.put("url", url);
		resultMap.put("msg", msg);
		resultMap.put("data", address);
		
		return resultMap;
	}
	
	
}
	
