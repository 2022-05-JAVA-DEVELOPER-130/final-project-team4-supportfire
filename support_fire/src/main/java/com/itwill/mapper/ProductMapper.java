package com.itwill.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.itwill.dto.Product;
@Mapper
public interface ProductMapper {
	//상품 등록
	@Insert("insert into product values(PRODUCT_P_NO_SEQ.nextval, #{p_name}, #{p_date}, #{p_price}, #{p_imahe}, #{br_name})")
	int insert(Product product);
	
}
