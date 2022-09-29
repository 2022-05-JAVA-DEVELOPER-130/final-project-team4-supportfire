package com.itwill.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.itwill.dto.Review;

@Mapper
public interface ReviewMapper {
	
	@Insert("insert into review values(REVIEW_R_NO_SEQ.nextval, #{r_title}, #{r_content}, sysdate, #{r_star}, #{m_id}, #{p_no})")
	int insert(Review review);
	
	@Update("update review set r_title=#{r_title}, r_content=#{r_content}, r_star=#{r_star} where r_no=#{r_no}")
	int update(Review review);
	
	@Delete("delete from review where r_no=#{r_no}")
	int delete(int n_no);
	
	@Select("select * from review where r_no=#{r_no}")
	Review selectByNo(int n_no);
	
	@Select("select * from review where p_no=#{p_no} order by r_no desc")
	List<Review> selectByPNo(int p_no);
	
	
	
	
}
