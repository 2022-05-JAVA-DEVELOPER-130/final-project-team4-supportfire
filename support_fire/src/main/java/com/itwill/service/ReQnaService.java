package com.itwill.service;

import com.itwill.dto.ReQna;

public interface ReQnaService {
	
	int insert(ReQna reQna);
	
	int update(ReQna reQna);
	
	int delete(int rq_no);
	
	ReQna selectByNo(int rq_no);
}
