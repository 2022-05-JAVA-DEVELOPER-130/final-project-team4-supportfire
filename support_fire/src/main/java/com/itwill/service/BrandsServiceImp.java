package com.itwill.service;

import java.util.List;

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

	@Override
	public List<Brands> selectAll() {
		return brandsDao.selectAll();
	}

	@Override
	public int selectByNo1(int br_no) {
		return brandsDao.selectByNo1(br_no);
	}
}
