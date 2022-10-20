package com.itwill.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.itwill.dto.Address;
import com.itwill.service.AddressService;

public class AddressController {
	
	private AddressService addressService;
	
	public String address_form(HttpSession session, Model model) {
		String sUserId = (String)session.getAttribute("sUserId");
		Address mainAddr = addressService.selectMainAddr(sUserId);
		List<Address> addressList = addressService.selectAllById(sUserId);
		
		model.addAttribute("mainAddr", mainAddr);
		model.addAttribute("addressList", addressList);
		
		return "m_address";
	}
}
