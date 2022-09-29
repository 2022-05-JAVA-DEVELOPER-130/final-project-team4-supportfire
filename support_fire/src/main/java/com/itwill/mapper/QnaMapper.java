package com.itwill.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.itwill.dto.Qna;


@Mapper
public interface QnaMapper {
	
	@Insert("insert into qna (q_no, q_title, q_contents, q_date, q_groupno, q_step, q_depth, m_id) values(qna_q_no_seq.nextval, #{q_title}, #{q_contents}, sysdate, qna_q_no_seq.currval, 1, 0, #{m_id})")
	public int qna_insert(Qna qna);
	
	
	@Select("select * from (select ROWNUM idx, s.* from (select * from qna ORDER BY q_groupno DESC, q_step ASC)s)WHERE idx >= #{start} AND idx <= #{last}")
	public List<Qna> qna_list(int start, int last);
	
	@Select("select * from QNa")
	public List<Qna> selectAll();
	
	@Select("select * from qna where m_id = #{m_id}")
	public Qna qna_selectById(int m_id);
	
	@Select("select * from qna where q_no = #{q_no}")
	public Qna qna_selectByNo(int q_no);

	
	public int qna_update(Qna vo);

	
	public int qna_delete(int m_id);
	
	
	public int qna_countAll();

	
	public int qna_reply_insert(Qna qna);

	
}
