package com.itwill.controller;

import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.dto.Member;
import com.itwill.service.MemberService;

@RestController
public class MemberController {

	private MemberService memberService;
	
	@GetMapping("member_main")
	public String member_main() {
		return "member_main";
	}
	
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
}
