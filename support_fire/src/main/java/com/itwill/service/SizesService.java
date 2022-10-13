package com.itwill.service;

import java.util.List;

import com.itwill.dto.Sizes;

public interface SizesService {

	List<Sizes> selectAll(int c_no);
}
