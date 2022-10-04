package com.itwill.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.dto.Sizes;
import com.itwill.mapper.SizesMapper;

@Repository
public class SizesDaoImp implements SizesDao{
	@Autowired
	private SizesMapper sizesMapper;

	@Override
	public List<Sizes> selectAll(int c_no) {
		return sizesMapper.selectAll(c_no);
	}
}
