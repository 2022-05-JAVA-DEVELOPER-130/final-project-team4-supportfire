package com.itwill.dao;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.dto.ProductSize;
import com.itwill.mapper.ProductSizeMapper;
@Repository
public class ProductSizeDaoImp implements ProductSizeDao{
	@Autowired
	private ProductSizeMapper productSizeMapper;
	
	@Override
	public int delete(int ps_no) {
		return productSizeMapper.delete(ps_no);
	}
	@Override
	public ProductSize selectByNo(int ps_no) {
		return productSizeMapper.selectByNo(ps_no);
	}
	@Override
	public Map selectBuyMinPriceBySize(int p_no, String s_size) {
		return productSizeMapper.selectBuyMinPriceBySize(p_no, s_size);
	}
	@Override
	public Map selectSellMinPriceBySize(int p_no, String s_size) {
		return productSizeMapper.selectSellMinPriceBySize(p_no, s_size);
	}
}
