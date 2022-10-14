package com.itwill.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	
	@RequestMapping("main")
	public String main() {
		return "index";
	}
	
	@RequestMapping("login_form")
	public String login_form() {
		return "login_form";
	}
	
	@RequestMapping("logout_action")
	public String logout_action(HttpServletRequest request) {
		request.getSession().invalidate();
		return "index";
	}
	
	@RequestMapping("mypage")
	public String mypage() {
		return "mypage";
	}
	
	@RequestMapping("product_sizes")
	public String product_sizes() {
		return "product_size";
	}
	
	@RequestMapping("payment")
	public String payment() {
		return "payment";
	}
}
