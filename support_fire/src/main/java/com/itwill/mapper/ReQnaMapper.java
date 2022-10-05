package com.itwill.mapper;

import com.itwill.dto.ReQna;

public interface ReQnaMapper {
	
	
	int insert(ReQna reQna);
	
	
	int update();
	
	
	int delete();
	
	
	ReQna selectByNo();
}
