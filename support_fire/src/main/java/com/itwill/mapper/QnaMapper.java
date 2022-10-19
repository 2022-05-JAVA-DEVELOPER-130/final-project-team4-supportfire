package com.itwill.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import com.itwill.dto.Qna;


@Mapper
public interface QnaMapper {
	
	//QNA 추가
	@Insert("insert into qna (q_no, q_title, q_content, q_date, m_id) values(#{q_no}, #{q_title}, #{q_content}, sysdate, #{m_id})")
	@SelectKey(statement = "select qna_q_no_seq.nextval from dual",
				keyProperty = "q_no",
				before = true,
				resultType = int.class)
	public int qna_insert(Qna qna);
	
	/*
	 * //QNA 리스트 출력 (정렬해서 출력)
	 * 
	 * @Select("select * from (select ROWNUM idx, s.* from (select * from qna ORDER BY q_groupno DESC, q_step ASC)s)WHERE idx >= #{start} AND idx <= #{last}"
	 * ) public List<Qna> qna_list(int start, int last);
	 */
	
	//QNA 리스트 출력
	@Select("select * from QNa q left outer join reqna r on q.rq_no = r.rq_no order by q_no asc")
	@ResultMap("QnaSelect")
	public List<Qna> selectAll();
	
	//QNA id로 찾기
	@Select("select * from qna q left outer join reqna r on q.rq_no = r.rq_no where m_id = #{m_id}")
	@ResultMap("QnaSelect")
	public Qna qna_selectById(int m_id);
	
	//QNA 상세
	@Select("select * from qna q left outer join reqna r on q.rq_no = r.rq_no where q_no = #{q_no}")
	@ResultMap("QnaSelect")
	public Qna qna_selectByNo(int q_no);
	
	//QNA 업데이트
	@Update("update qna set q_title=#{q_title}, q_content=#{q_content} where q_no=#{q_no}")
	public int qna_update(Qna qna);

	//QNA 삭제
	@Delete("delete from qna where q_no=#{q_no}")
	public int qna_delete(int q_no);
	
	//QNA 총 갯수 찾기
	@Select("select count(*) from qna")
	public int qna_countAll();

	//QNA 답글업데이트
	@Update("update qna set rq_no=#{reQna.rq_no} where q_no=#{q_no}")
	public int qna_reply_update(Qna qna);

	//QNA 리스트 출력
	List<Qna> selectAll_p(int pageStart, int pageEnd);
}
