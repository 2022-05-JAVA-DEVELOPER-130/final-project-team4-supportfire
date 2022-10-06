package com.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.common.PageMaker;
import com.itwill.common.QnaPageMakerDto;
import com.itwill.dao.QnaDao;
import com.itwill.dto.Qna;

@Service
public class QnaServiceImp implements QnaService{
	
	@Autowired
	private QnaDao qnaDao;

	public void setQnaDao(QnaDao qnaDao) {
		this.qnaDao = qnaDao;
	}
	
	public QnaServiceImp() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public List<Qna> selectAll() {
		return qnaDao.selectAll();
	}
	

	@Override
	public int qna_insert(Qna qna) {
		return qnaDao.qna_insert(qna);
	}



	@Override
	public Qna qna_selectById(int m_id) {
		return qnaDao.qna_selectById(m_id);
	}

	@Override
	public Qna qna_selectByNo(int q_no) {
		return qnaDao.qna_selectByNo(q_no);
	}
	
	@Override
	public int qna_update(Qna qna) {
		return qnaDao.qna_update(qna);
	}

	@Override
	public int qna_delete(int m_id) {
		return qnaDao.qna_delete(m_id);
	}

	@Override
	public int qna_countAll() {
		return qnaDao.qna_countAll();
	}

	@Override
	public int qna_reply_update(Qna qna) {
		return qnaDao.qna_reply_update(qna);
	}


	
}