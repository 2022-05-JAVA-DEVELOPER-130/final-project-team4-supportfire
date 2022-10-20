package com.itwill.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
  	@RequestMapping("qna")
  	public String notice_list(@RequestParam(required = false, defaultValue = "1") Integer pageno,Model model) throws Exception{
  		NoticePageMakerDto<Qna> qnaList = qnaService.selectAll_p(pageno);
  		model.addAttribute("qnaList", qnaList);
  		model.addAttribute("pageno", pageno);
  		return "qna_board";
  	}
  	
  	@RequestMapping("bid_forward")
  	public String bid_forward(int p_no, int bt_no, int c_no, String s_size, int price, Model model,HttpServletRequest request) {
  		
  		
  		
  		model.addAttribute("p_no", p_no);
  		model.addAttribute("bt_no", bt_no);
  		model.addAttribute("c_no", c_no);
  		model.addAttribute("s_size", s_size);
  		model.addAttribute("price", price);
  		
  		
  		return "forward:bid";
  	}
  	
  	@RequestMapping("url_check")
  	@ResponseBody
  	public Map url_check(String url) {
  		Map resultMap= new HashMap();
  		int code=0;
		String msg="";
		String[] urlS = url.split("/");
		String url1 = urlS[2];
		char a = url1.charAt(0);
		String b = a+"";
		if(b.equals("m") || b.equals("l")) {
			code=1;
		}else if(b.equals("s") || b.equals("p") || b.equals("b")) {
			code=2;
		}else if(b.equals("n")) {
			code=3;
		}else if(b.equals("q")) {
			code=4;
		}
		
			resultMap.put("code",code);
		    resultMap.put("url",url);
		    resultMap.put("msg",msg);
		    
		  return resultMap;
  	}
  	
  	
}
