package com.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.dao.ReviewDao;
import com.itwill.dto.Review;

@Service
public class ReviewServiceImp implements ReviewService{
	@Autowired
	private ReviewDao reviewDao;

	@Override
	public int insert(Review review) {
		return reviewDao.insert(review);
	}

	@Override
	public int update(Review review) {
		return reviewDao.update(review);
	}

	@Override
	public int delete(int n_no) {
		return reviewDao.delete(n_no);
	}

	@Override
	public Review selectByNo(int n_no) {
		return reviewDao.selectByNo(n_no);
	}

	@Override
	public List<Review> selectByPNo(int p_no) {
		return reviewDao.selectByPNo(p_no);
	}
	
	
	
}
