package com.itwill.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.dto.Review;
import com.itwill.mapper.ReviewMapper;

@Repository
public class ReviewDaoImp implements ReviewDao{
	@Autowired
	private ReviewMapper reviewMapper;

	@Override
	public int insert(Review review) {
		return reviewMapper.insert(review);
	}

	@Override
	public int update(Review review) {
		return reviewMapper.update(review);
	}

	@Override
	public int delete(int n_no) {
		return reviewMapper.delete(n_no);
	}

	@Override
	public Review selectByNo(int n_no) {
		return reviewMapper.selectByNo(n_no);
	}

	@Override
	public List<Review> selectByPNo(int p_no) {
		return reviewMapper.selectByPNo(p_no);
	}
	
}
