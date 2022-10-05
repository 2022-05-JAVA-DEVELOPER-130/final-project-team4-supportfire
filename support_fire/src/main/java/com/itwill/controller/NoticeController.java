package com.itwill.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.dto.Notice;
import com.itwill.service.NoticeService;

@RestController
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("noticelist")
	public List<Notice> noticeList(HttpServletRequest request) {
		List<Notice> notice = noticeService.selectAll();
		
		
		return notice;
	}
	
	
}
