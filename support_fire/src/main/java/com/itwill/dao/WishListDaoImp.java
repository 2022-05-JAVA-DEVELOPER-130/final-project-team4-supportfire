package com.itwill.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.dto.WishList;
import com.itwill.mapper.WishListMapper;

@Repository
public class WishListDaoImp implements WishListDao{
	
	@Autowired
	private WishListMapper wishListMapper;
	
	@Override
	public int insert(WishList wishList) {
		return wishListMapper.insert(wishList);
	}

	@Override
	public int update() {
		return 0;
	}

	@Override
	public int delete(int w_no) {
		return wishListMapper.delete(w_no);
	}

	@Override
	public List<WishList> selectAll(String m_id) {
		return wishListMapper.selectAll(m_id);
	}

}
