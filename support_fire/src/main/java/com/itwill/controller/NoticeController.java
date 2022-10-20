package com.itwill.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.common.NoticePageMakerDto;
import com.itwill.dto.Notice;
import com.itwill.service.NoticeService;





@Controller
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	
	//공지사항 전체조회
	@RequestMapping("notice_list")
	public String notice_list(@RequestParam(required = false, defaultValue = "1") Integer pageno,Model model) throws Exception{
		//System.out.println(pageno);
		NoticePageMakerDto<Notice> noticeList = noticeService.selectAll(pageno);
		//System.out.println(noticeList);
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("pageno", pageno);
		return "tables";
	}
	
	
	//공지사항 상세보기
	@RequestMapping("/notice_view")
	public String notice_view(@RequestParam Integer pageno, Integer n_no, Model model) throws Exception{
		if(pageno==null || n_no==null) {
			return "tables";
		}
		try {
		Notice notice = noticeService.selectByNo(n_no);
		noticeService.updateCount(n_no);
		model.addAttribute("notice", notice);
		model.addAttribute("pageno", pageno);
		}catch (Exception e){
			e.printStackTrace();
			return "error";
		}
		return "tables-detail";
	}
	
	/*
	 * 새글 등록
	 */
	
	@LoginCheck
	@RequestMapping("/notice_new_write")
	public String notice_new_write(@ModelAttribute Notice notice, @RequestParam Integer pageno, HttpSession session) throws Exception{
		String sUserId = (String)session.getAttribute("sUserId");
		if (pageno == null) {
			return "";
		}
		/*
		if(sUserId != "admin") {
			return "notice_list";
		}
		*/
		try {
			noticeService.insert(notice);
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
		return "redirect:notice_list?pageno=" + pageno;
	}
	
	
	/*
	 * 게시글 입력폼
	 */
	
	@LoginCheck
	@RequestMapping("/notice_write_form")
	public String qna_write_form(Integer pageno, Model model,HttpSession session) throws Exception{
		String sUserId = (String)session.getAttribute("sUserId");
		if (pageno == null) {
			return "";
		}
		/*
		if(sUserId != "admin") {
			return "redirect:notice_list";
		}
		*/
		try {
			model.addAttribute("pageno", pageno);
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
		return "tables-write";
	}
	
	
	/*
	 * 게시글 수정
	 */
	@LoginCheck
	@RequestMapping("/notice_update")
	public String notice_update(@RequestParam Map<String, String> params) throws Exception{
		//String sUserId = (String)session.getAttribute("sUserId");
		String pageno = params.get("pageno");
		String n_no = params.get("n_no");
		if (pageno == null || n_no == null) {
			return "notice_list";
		}
		//try {
			Notice notice = new Notice();
			notice.setN_no(Integer.parseInt(n_no));
			notice.setN_title(params.get("n_title"));
			notice.setN_content(params.get("n_content"));
			notice.setN_fix(Integer.parseInt(params.get("n_fix")));
			noticeService.update(notice);
			
		/*	
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
		*/
		return "redirect:notice_view?pageno=" + pageno + "&n_no=" + n_no;
	}

	/*
	 * 게시글 수정폼
	 */
	@LoginCheck
	@RequestMapping("/notice_update_form")
	public String notice_update_form(@RequestParam Integer pageno, Integer n_no, Model model) throws Exception{
		//String sUserId = (String)session.getAttribute("sUserId");
		if (pageno == null || n_no == null) {
			return "notice_list";
		}
		/*
		if(sUserId != "admin") {
			return "redirect:notice_list";
		}
		*/
		try {
			
			Notice notice = noticeService.selectByNo(n_no);
			model.addAttribute("notice", notice);
			model.addAttribute("pageno", pageno);
			
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
		return "tables-update";
	}
	
	
	
	
}