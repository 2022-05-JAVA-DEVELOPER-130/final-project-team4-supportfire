package com.itwill.dao;

import java.util.List;

import com.itwill.dto.WishList;
import com.itwill.mapper.WishListMapper;

public class WishListDaoImp implements WishListDao{
	
	private WishListMapper wishListMapper;
	
	@Override
	public int insert(WishList wishList) {
		return 0;
	}

	@Override
	public int update() {
		return 0;
	}

	@Override
	public int delete(int w_no) {
		return 0;
	}

	@Override
	public List<WishList> selectAll(String m_id) {
		return null;
	}

}
