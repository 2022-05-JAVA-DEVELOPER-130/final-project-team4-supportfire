package com.itwill.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.dao.ReQnaDao;
import com.itwill.dto.ReQna;
@Service
public class ReQnaServiceImp implements ReQnaService{
	@Autowired
	private ReQnaDao reQnaDao;

	@Override
	public int insert(ReQna reQna) {
		return reQnaDao.insert(reQna);
	}

	@Override
	public int update(ReQna reQna) {
		return reQnaDao.update(reQna);
	}

	@Override
	public int delete(int rq_no) {
		return reQnaDao.delete(rq_no);
	}

	@Override
	public ReQna selectByNo(int rq_no) {
		return reQnaDao.selectByNo(rq_no);
	}
	
	
}
