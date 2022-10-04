package com.itwill.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.itwill.dto.Sizes;

@Mapper
public interface SizesMapper {
	
	@Select("select * from sizes where c_no=#{c_no}")
	List<Sizes> selectAll(int c_no);
	
}
