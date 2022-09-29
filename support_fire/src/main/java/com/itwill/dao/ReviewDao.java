package com.itwill.dao;

import java.util.List;


import com.itwill.dto.Review;

public interface ReviewDao {
	
	int insert(Review review);
	
	int update(Review review);
	
	int delete(int n_no);
	
	Review selectByNo(int n_no);
	
	List<Review> selectByPNo(int p_no);
	
	
}
