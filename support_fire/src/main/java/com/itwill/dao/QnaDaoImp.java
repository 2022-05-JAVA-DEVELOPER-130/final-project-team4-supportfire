package com.itwill.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.dto.Qna;
import com.itwill.mapper.QnaMapper;


@Repository
public class QnaDaoImp implements QnaDao{

	@Autowired
	private QnaMapper qnaMapper;

	public QnaDaoImp() {
		// TODO Auto-generated constructor stub
	}
	
	
	public void setQnaMapper(QnaMapper qnaMapper) {
		this.qnaMapper = qnaMapper;
	}



	@Override
	public int qna_insert(Qna qna) {
		qnaMapper.qna_insert(qna);
		return qna.getQ_no();
	}

	
	@Override
	public List<Qna> selectAll() {
		return qnaMapper.selectAll();
	}

	@Override
	public Qna qna_selectById(int m_id) {
		return qnaMapper.qna_selectById(m_id);
	}
	
	@Override
	public Qna qna_selectByNo(int q_no) {
		return qnaMapper.qna_selectByNo(q_no);
	}
	
	@Override
	public int qna_update(Qna qna) {
		return qnaMapper.qna_update(qna);
	}

	@Override
	public int qna_delete(int m_id) {
		return qnaMapper.qna_delete(m_id);
	}

	@Override
	public int qna_countAll() {
		return qnaMapper.qna_countAll();
	}

	@Override
	public int qna_reply_update(Qna qna) {
		return qnaMapper.qna_reply_update(qna);
	}


	@Override
	public List<Qna> selectAll_p(int pageStart, int pageEnd) {
		return qnaMapper.selectAll_p(pageStart, pageEnd);
	}

}
