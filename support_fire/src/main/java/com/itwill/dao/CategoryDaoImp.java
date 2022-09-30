package com.itwill.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.dto.Category;
import com.itwill.mapper.CategoryMapper;
@Repository
public class CategoryDaoImp implements CategoryDao{
	
	@Autowired
	private CategoryMapper categoryMapper;

	@Override
	public List<Category> selectAll() {
		return categoryMapper.selectAll();
	}
}
