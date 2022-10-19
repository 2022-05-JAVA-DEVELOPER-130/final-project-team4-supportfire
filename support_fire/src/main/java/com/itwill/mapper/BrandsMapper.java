package com.itwill.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.itwill.dto.Brands;

@Mapper
public interface BrandsMapper {
	
	@Select("select b.br_no, b.br_name, b.c_no from brands b join product p on b.br_no = p.br_no where p_no = #{p_no}")
	Brands selectByNo(int p_no);
	
	@Select("select * from brands")
	List<Brands> selectAll();
	
	@Select("select * from brands where br_no = #{br_no}")
	int selectByNo1(int br_no);
}
