package com.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.dao.CategoryDao;
import com.itwill.dto.Category;

@Service
public class CategoryServiceImp implements CategoryService{
	@Autowired
	private CategoryDao categoryDao;

	@Override
	public List<Category> selectAll() {
		return categoryDao.selectAll();
	}
	
	
}
