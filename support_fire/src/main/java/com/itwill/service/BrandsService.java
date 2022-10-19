package com.itwill.service;


import java.util.List;

import com.itwill.dto.Brands;
public interface BrandsService {
	
	Brands selectByNo(int p_no);
	
	List<Brands> selectAll();
	
	int selectByNo1(int br_no);
}
