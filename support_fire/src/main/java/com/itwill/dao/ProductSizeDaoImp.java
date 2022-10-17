package com.itwill.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.dto.ProductSize;
import com.itwill.mapper.ProductMapper;
import com.itwill.mapper.ProductSizeMapper;
@Repository
public class ProductSizeDaoImp implements ProductSizeDao{
	@Autowired
	private ProductSizeMapper productSizeMapper;
	
	@Override
	public int insert(ProductSize productSize) {
		return productSizeMapper.insert(productSize);
	}
	@Override
	public int delete(int ps_no) {
		return productSizeMapper.delete(ps_no);
	}
	@Override
	public ProductSize selectByNo(int ps_no) {
		return productSizeMapper.selectByNo(ps_no);
	}
	
	@Override
	public List<ProductSize> selectByNoAll(int p_no) {
		return productSizeMapper.selectByNoAll(p_no);
	}
	
	@Override
	public List<Map> selectBuyMinPriceByNo(int p_no) {
		return productSizeMapper.selectBuyMinPriceByNo(p_no);
	}
	
	@Override
	public List<Map> selectSellMinPriceByNo(int p_no) {
		return productSizeMapper.selectSellMinPriceByNo(p_no);
	}
	@Override
	public int selectByPnoSize(int p_no,String s_size) {
		return productSizeMapper.selectByPnoSize(p_no, s_size);
	}
	
}
