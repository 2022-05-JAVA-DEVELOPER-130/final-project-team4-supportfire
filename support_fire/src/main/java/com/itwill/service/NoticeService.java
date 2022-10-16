package com.itwill.service;

import java.util.List;

import com.itwill.common.NoticePageMakerDto;
import com.itwill.dto.Notice;

public interface NoticeService {
	
	int insert(Notice notice) throws Exception;
	
	int update(Notice notice) throws Exception;
	
	int delete(int n_no) throws Exception;
	
	Notice selectByNo(int n_no) throws Exception;
	
	int updateCount(int n_no) throws Exception;
	
	int selectCount() throws Exception;
	
	NoticePageMakerDto<Notice> selectAll(int currentPage) throws Exception;
}
