package com.itwill.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.itwill.dto.Product;
@Mapper
public interface ProductMapper {
	//제품 등록
	@Insert("insert into product values(PRODUCT_P_NO_SEQ.nextval, #{p_name}, #{p_date}, #{p_price}, #{p_image}, #{br_no})")
	int insert(Product product);
	
	//제품 삭제
	@Delete("delete from product where p_no=#{p_no}")
	int delete(int p_no);
	
	//제품 1개 출력
	
	
	//제품 전체 출력
	
	
}
