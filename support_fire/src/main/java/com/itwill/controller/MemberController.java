package com.itwill.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.dto.Member;
import com.itwill.service.MemberService;

@RestController
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	
	@GetMapping("member_list")
	public String member_list(Model model) throws Exception{
		List<Member> members = memberService.selectAllmembers();
		model.addAttribute("members", members);
		return "member_list";
	}
	
	@GetMapping("member_view/{m_id}")
	public String member_view(@PathVariable("m_id") String m_id,
							  Model model) throws Exception{
		Member member = memberService.selectById(m_id);
		model.addAttribute("member", member);
		return "member_view";
	}
	
	@RequestMapping("member_write_form")
	public String member_write_form() {
		return "member_write_form";
	}
	
	@PostMapping("member_write_action")
	public String member_write_action(@ModelAttribute Member member) throws Exception{
		int insertRowCount = memberService.insertMember(member);
		return "member_write_action";
	}
	
	@GetMapping("member_delete_action")
	public String member_delete_action(@RequestParam String m_id) throws Exception{
		int deleteRowCount = memberService.deleteMember(m_id);
		return "member_delete_action";
	}
	
	@GetMapping("member_modify_form/{m_id}")
	public String member_modify_form(@PathVariable("m_id") String m_id,
									 Model model) throws Exception{
		Member member = memberService.selectById(m_id);
		model.addAttribute("member", member);
		return "member_modify_form";
	}
	
	@PostMapping("member_modify_action")
	public String member_modify_action(@ModelAttribute Member member) throws Exception{
		int updateMemberRowCount = memberService.updateMember(member);
		return "member_modify_action";
	}
	
	@RequestMapping("member_login_form")
	public String login_form() {
		
		return "member_login_form";
	}
	
	//로그인 액션
	@RequestMapping(value = "member_login_action", method = RequestMethod.POST)
	public Map login_action(@ModelAttribute Member member, Model model) throws Exception{
		Map resultMap = new HashMap();
		int code=0;
		String url="";
		String msg="";
		int data=0;
		int rowCount = memberService.login(member.getM_id(), member.getM_password());
		if(rowCount == 0) {
			msg="아이디가 존재하지 않습니다.";
			url = "member_login_form";
			data=rowCount;
		}else if(rowCount == 1) {
			msg="비밀번호가 일치하지 않습니다.";
			url = "member_login_form";
			data=rowCount;
		}else {
			url = "main";
			data=2;
		}
		
		resultMap.put("code",code);
	    resultMap.put("url",url);
	    resultMap.put("msg",msg);
	    resultMap.put("data",data);
	    
	    return resultMap;
	}
	
	
	@RequestMapping(value = "id_search_action")
	public Map id_search(String m_phone) throws Exception{
		Map resultMap = new HashMap();
		int code=1;
		String url="";
		String msg="";
		String data = memberService.selectMemberByPhone(m_phone);
		System.out.println(data);
		if(data == null) {
			code = 0;
			msg = "일치하는 아이디가 없습니다";
			data = "아이디찾기 실패";
		}
		
		resultMap.put("code",code);
	    resultMap.put("url",url);
	    resultMap.put("msg",msg);
	    resultMap.put("data",data);
		return resultMap;
	}
	
	
	
	
	
	
	
}
