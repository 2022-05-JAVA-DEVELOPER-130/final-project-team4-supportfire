package com.itwill.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.common.NoticePageMakerDto;
import com.itwill.dto.Qna;
import com.itwill.service.QnaService;

@Controller
public class MainController {
	@Autowired
	private QnaService qnaService;
	
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
	
	//@RequestMapping("payment")
	public String payment() {
		return "payment";
	}
	
	 //공지사항 전체조회
  	@RequestMapping("board")
  	public String notice_list(@RequestParam(required = false, defaultValue = "1") Integer pageno,Model model) throws Exception{
  		System.out.println(pageno);
  		NoticePageMakerDto<Qna> qnaList = qnaService.selectAll_p(pageno);
  		System.out.println(qnaList);
  		model.addAttribute("qnaList", qnaList);
  		model.addAttribute("pageno", pageno);
  		return "qna_board";
  	}
  	
  	@RequestMapping("bid_forward")
  	public String bid_forward(int p_no, int bt_no, int c_no, String s_size, int price) {
  		System.out.println(p_no);
  		System.out.println(bt_no);
  		System.out.println(c_no);
  		System.out.println(s_size);
  		System.out.println(price);
  		return "bid";
  	}
}
