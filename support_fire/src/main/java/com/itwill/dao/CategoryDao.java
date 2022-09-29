package com.itwill.dao;

import java.util.List;

import com.itwill.dto.Category;

public interface CategoryDao {
	
	List<Category> selectAll();
}
