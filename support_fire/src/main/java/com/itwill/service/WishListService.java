package com.itwill.service;

import java.util.List;

import com.itwill.dto.WishList;

public interface WishListService {
	
	
	int insert(WishList wishList);
	
	int update();
	
	int delete(int w_no);
	
	List<WishList> selectAll(String m_id);
}
