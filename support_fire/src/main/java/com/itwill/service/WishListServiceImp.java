package com.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.dao.WishListDao;
import com.itwill.dto.WishList;

@Service
public class WishListServiceImp implements WishListService{
	
	@Autowired
	private WishListDao wishListDao;
	
	@Override
	public int insert(WishList wishList) {
		return wishListDao.insert(wishList);
	}

	@Override
	public int update() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int w_no) {
		return wishListDao.delete(w_no);
	}

	@Override
	public List<WishList> selectAll(String m_id) {
		return wishListDao.selectAll(m_id);
	}

}
