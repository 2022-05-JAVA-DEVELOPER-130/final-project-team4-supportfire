package com.itwill.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.dto.ReQna;
import com.itwill.mapper.ReQnaMapper;

@Repository
public class ReQnaDaoImp implements ReQnaDao{
	@Autowired
	private ReQnaMapper reQnaMapper;

	@Override
	public int insert(ReQna reQna) {
		reQnaMapper.insert(reQna);
		return reQna.getRq_no();
	}

	@Override
	public int update(ReQna reQna) {
		return reQnaMapper.update(reQna);
		
	}

	@Override
	public int delete(int rq_no) {
		return reQnaMapper.delete(rq_no);
	}

	@Override
	public ReQna selectByNo(int rq_no) {
		return reQnaMapper.selectByNo(rq_no);
	}
	
	
}
