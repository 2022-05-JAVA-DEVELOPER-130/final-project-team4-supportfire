package com.itwill.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.itwill.dto.ProductDetail;

@Mapper
public interface ProductSizeMapper {

	int insert();
	
	int update();
	
	int delete();
	
	ProductDetail selectByNo();
	
	ProductDetail selectById();
	
	ProductDetail selectByIdAndBtNo();
	
	
	List<ProductDetail> selectAll();
	
	
	
}
