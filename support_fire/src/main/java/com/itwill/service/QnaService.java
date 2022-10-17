package com.itwill.service;

import java.util.List;

import com.itwill.common.NoticePageMakerDto;
import com.itwill.common.QnaPageMakerDto;
import com.itwill.dto.Notice;
import com.itwill.dto.Qna;


public interface QnaService {
	
		//QNA 추가
		public int qna_insert(Qna qna);
		
		//QNA 리스트 출력
		public List<Qna> selectAll();
		
		//QNA id로 찾기
		public Qna qna_selectById(int m_id);
		
		//QNA 상세
		public Qna qna_selectByNo(int q_no);
		
		//QNA 업데이트
		public int qna_update(Qna qna);

		//QNA 삭제
		public int qna_delete(int q_no);
		
		//QNA 총 갯수 찾기
		public int qna_countAll();

		//QNA 답글업데이트
		public int qna_reply_update(Qna qna);
		
		//QNA 리스트 출력
		NoticePageMakerDto<Qna> selectAll_p(int currentPage);
}
