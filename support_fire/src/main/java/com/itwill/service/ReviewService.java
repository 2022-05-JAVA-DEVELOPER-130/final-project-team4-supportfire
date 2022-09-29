package com.itwill.service;

import java.util.List;

import com.itwill.dto.Review;

public interface ReviewService {
	
	int insert(Review review);
	
	int update(Review review);
	
	int delete(int n_no);
	
	Review selectByNo(int n_no);
	
	List<Review> selectByPNo(int p_no);
	
}
