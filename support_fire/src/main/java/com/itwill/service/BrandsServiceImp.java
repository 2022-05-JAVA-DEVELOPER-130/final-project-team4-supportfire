package com.itwill.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.dao.BrandsDao;
import com.itwill.dto.Brands;
@Service
public class BrandsServiceImp implements BrandsService{
	@Autowired
	private BrandsDao brandsDao;

	@Override
	public Brands selectByNo(int p_no) {
		return brandsDao.selectByNo(p_no);
	}
}
