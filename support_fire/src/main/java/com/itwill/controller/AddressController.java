package com.itwill.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.dto.Address;
import com.itwill.dto.Member;
import com.itwill.service.AddressService;
import com.itwill.service.MemberService;
@Controller
public class AddressController {
	@Autowired
	private AddressService addressService;
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("mypage_address")
	public String address_form(HttpSession session, Model model) {
		String sUserId = (String)session.getAttribute("sUserId");
		Address mainAddr = addressService.selectMainAddr(sUserId);
		List<Address> addressList = addressService.selectAllById(sUserId);
	
		model.addAttribute("mainAddr", mainAddr);
		model.addAttribute("addressList", addressList);
		
		return "m_address";
	}
	
	@RequestMapping("address_insert")
	@ResponseBody
	public Map address_insert(Address address, HttpSession session) {
		String sUserId = (String)session.getAttribute("sUserId");
		address.setM_id(sUserId);
		Map resultMap = new HashMap();
		int code=0;
		String url="";
		String msg="";
		code = addressService.insert(address);
		
		resultMap.put("code",code);
	    resultMap.put("url",url);
	    resultMap.put("msg",msg);
	    resultMap.put("data","11");
	    
	    return resultMap;
	}
	
	@RequestMapping("address_delete")
	@ResponseBody
	public Map address_delete(int a_no) {
		Map resultMap = new HashMap();
		int code=0;
		String url="";
		String msg="";
		code = addressService.delete(a_no);
		
		resultMap.put("code",code);
	    resultMap.put("url",url);
	    resultMap.put("msg",msg);
	    resultMap.put("data","11");
	    
	    return resultMap;
	}
	
	
	@RequestMapping("address_update_form")
	@ResponseBody
	public Map address_update_form(int a_no) {
		Map resultMap = new HashMap();
		int code=0;
		String url="";
		String msg="";
		Address address = addressService.selectAllByNo(a_no);
		
		resultMap.put("code",code);
		resultMap.put("url",url);
		resultMap.put("msg",msg);
		resultMap.put("data",address);
		
		return resultMap;
	}
	
	@RequestMapping("address_update_action")
	@ResponseBody
	public Map address_update_action(Address address) {
		System.out.println(address);
		Map resultMap = new HashMap();
		int code=0;
		String url="";
		String msg="";
		code = addressService.update(address);
		
		resultMap.put("code",code);
		resultMap.put("url",url);
		resultMap.put("msg",msg);
		resultMap.put("data",address);
		
		return resultMap;
	}
	
	@RequestMapping("address_main")
	@ResponseBody
	public Map address_main(int a_no, HttpSession session) throws Exception{
		Map resultMap = new HashMap();
		int code=0;
		String url="";
		String msg="";
		String sUserId = (String)session.getAttribute("sUserId");
		Address address = addressService.selectAllByNo(a_no);
		System.out.println("add : " + address);
		Member member = memberService.selectById(sUserId);
		System.out.println("mem :" + member);
		member.setM_address(address.getA_streetAddr());
		memberService.updateMember(member);
		System.out.println("update : " + member);
		
		resultMap.put("code",code);
		resultMap.put("url",url);
		resultMap.put("msg",msg);
		
		return resultMap;
	}
	
}
