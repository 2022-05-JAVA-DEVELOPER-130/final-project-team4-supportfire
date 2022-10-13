package com.itwill.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.itwill.dto.Brands;

@Mapper
public interface BrandsMapper {
	
	@Select("select b.br_no, b.br_name, b.c_no from brands b join product p on b.br_no = p.br_no where p_no = #{p_no}")
	Brands selectByNo(int p_no);
	
}
