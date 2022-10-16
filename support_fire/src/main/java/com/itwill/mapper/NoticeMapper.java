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
	
	//
	@Select("select count(*) from notice")
	int SelectCount();
	
	@Update("update notice set n_count = n_count+1 where n_no = #{n_no}")
	int updateCount(int n_no);
	
	@Select("select * from notice order by n_no desc")
	List<Notice> selectAll(int pageStart, int pageEnd);
}
