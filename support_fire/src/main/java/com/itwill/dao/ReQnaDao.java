package com.itwill.dao;



import com.itwill.dto.ReQna;

public interface ReQnaDao {
	
	int insert(ReQna reQna);
	
	int update(ReQna reQna);
	
	int delete(int rq_no);
	
	ReQna selectByNo(int rq_no);
}
