package com.itwill.dao;

import java.util.List;

import com.itwill.dto.Brands;

public interface BrandsDao {
	
	Brands selectByNo(int p_no);
	
	List<Brands> selectAll();
	
	int selectByNo1(int br_no);
}
