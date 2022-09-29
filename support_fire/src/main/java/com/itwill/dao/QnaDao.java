package com.itwill.dao;

import java.util.List;

import com.itwill.dto.Qna;


public interface QnaDao {

	int qna_insert(Qna qna);

	List<Qna> qna_list(int start, int last);

	Qna qna_selectById(int m_id);
	
	Qna qna_selectByNo(int q_no);
	
	int qna_update(Qna vo);

	int qna_delete(int m_id);
	
	int qna_countAll();

	int qna_reply_insert(Qna qna);
	
	List<Qna> selectAll();
}
