package com.itwill.dao;


import java.util.List;

import com.itwill.dto.Notice;

public interface NoticeDao {

	List<Notice> selectAll(int pageStart, int pageEnd) throws Exception;
	
	int insert(Notice notice) throws Exception;
	
	Notice selectByNo(int notice_no) throws Exception;
	
	int delete(int notice_no) throws Exception;
	
	int update(Notice notice) throws Exception;
	
	int updateCount(int notice_no) throws Exception;

	int selectCount() throws Exception;
	
}
