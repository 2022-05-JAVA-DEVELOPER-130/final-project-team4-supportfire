package com.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.dao.SizesDao;
import com.itwill.dto.Sizes;
@Service
public class SizesServiceImp implements SizesService{
	
	@Autowired
	private SizesDao sizesDao;
	
	@Override
	public List<Sizes> selectAll(int c_no) {
		return sizesDao.selectAll(c_no);
	}
	
	
}
