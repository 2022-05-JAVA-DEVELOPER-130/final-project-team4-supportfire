package com.itwill.dao;


import java.util.List;

import com.itwill.dto.Notice;

public interface NoticeDao {
	
	
	int insert(Notice notice);
	
	int update(Notice notice);
	
	int delete(int n_no);
	
	Notice selectByNo(int n_no);
	
	List<Notice> selectAll();
	
}
