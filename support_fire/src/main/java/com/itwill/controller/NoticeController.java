package com.itwill.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.dto.Notice;
import com.itwill.service.NoticeService;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("/noticelist")
	public String noticeList(HttpServletRequest request) {
		List<Notice> notice = noticeService.selectAll();
		request.setAttribute("noticeList", notice);
		
		return "noticelist";
	}
	
	
}
