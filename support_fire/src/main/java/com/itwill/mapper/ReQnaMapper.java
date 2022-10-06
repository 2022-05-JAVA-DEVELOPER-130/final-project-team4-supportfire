package com.itwill.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import com.itwill.dto.ReQna;
@Mapper
public interface ReQnaMapper {
	
	@Insert("insert into reqna values(#{rq_no}, #{rq_content}, sysdate)")
	@SelectKey(before = true,
				keyProperty = "rq_no",
				resultType = int.class,
				statement = "select REQNA_RQ_NO_SEQ.nextval from dual")
	int insert(ReQna reQna);
	
	@Update("update reqna set rq_content=#{rq_content} where rq_no=#{rq_no}")
	int update(ReQna reQna);
	
	@Delete("delete from reqna where rq_no=#{rq_no}")
	int delete(int rq_no);
	
	@Select("select * from reqna where rq_no=#{rq_no}")
	ReQna selectByNo(int rq_no);
}
