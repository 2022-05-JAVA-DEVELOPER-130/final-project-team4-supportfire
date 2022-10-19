package com.itwill.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.dto.Brands;
import com.itwill.mapper.BrandsMapper;
@Repository
public class BrandsDaoImp implements BrandsDao{
	@Autowired
	private BrandsMapper brandsMapper;
	
	@Override
	public Brands selectByNo(int p_no) {
		return brandsMapper.selectByNo(p_no);
	}

	@Override
	public List<Brands> selectAll() {
		return brandsMapper.selectAll();
	}

	@Override
	public int selectByNo1(int br_no) {
		return brandsMapper.selectByNo1(br_no);
	}
	
	
}
