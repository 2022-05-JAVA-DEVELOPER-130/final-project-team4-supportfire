package com.itwill.service;

import java.util.List;

import com.itwill.dto.Notice;

public interface NoticeService {

	int insert(Notice notice);
	
	int update(Notice notice);
	
	int delete(int n_no);
	
	Notice selectByNo(int n_no);
	
	List<Notice> selectAll();
	
}
