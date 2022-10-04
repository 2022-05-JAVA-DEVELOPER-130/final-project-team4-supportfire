package com.itwill.dao;

import java.util.List;

import com.itwill.dto.Sizes;

public interface SizesDao {
	
	List<Sizes> selectAll(int c_no);
}
