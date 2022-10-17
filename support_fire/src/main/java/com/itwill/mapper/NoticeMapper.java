package com.itwill.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.itwill.dto.Notice;
@Mapper
public interface NoticeMapper {
	
	
	@Insert("insert into notice values(NOTICE_N_NO_SEQ.nextval, #{n_title}, #{n_content}, sysdate, #{n_count}, #{n_fix})")
	int insert(Notice notice);
	
	@Update("update notice set n_title=#{n_title}, n_content=#{n_content} where n_no = #{n_no}")
	int update(Notice notice);
	
	@Delete("delete from notice where n_no = #{n_no}")
	int delete(int n_no);
	
	@Select("select * from notice where n_no = #{n_no}")
	Notice selectByNo(int n_no);
	
	//괴도
	@Select("select count(*) from notice")
	int SelectCount();
	
	@Update("update notice set n_count = n_count+1 where n_no = #{n_no}")
	int updateCount(int n_no);
	
	//페이징 처리하는 공지사항 전체조회(뭔지 모름)
	List<Notice> selectAll(int pageStart, int pageEnd);
		/*
		<select id = "selectAll" parameterType="map" resultType = "com.itwill.brown_carrot_market.dto.Notice">
			select ss.* from 
			(select rownum idx, s.* from
			(select * from notice order by notice_fix desc, notice_no desc)s
			)ss
			where ss.idx <![CDATA[ >= ]]> #{pageStart} and ss.idx <![CDATA[ <= ]]> #{pageEnd}
		</select>
		*/
}
