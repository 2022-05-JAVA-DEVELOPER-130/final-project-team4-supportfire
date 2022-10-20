package com.itwill.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.dto.Notice;
import com.itwill.dto.PDDTO;
import com.itwill.dto.Product;
import com.itwill.mapper.ProductMapper;

@Repository
public class ProductDaoImp implements ProductDao{
	@Autowired
	private ProductMapper productMapper;
	
	@Override
	public int insert(Product product) {
		return productMapper.insert(product);
	}
	@Override
	public int delete(int p_no) {
		return productMapper.delete(p_no);
	}
	
	@Override
	public Product selectByNo(int p_no) {
		return productMapper.selectByNo(p_no);
	}
	
	@Override
	public Map selectBuyMinPriceByNo(int p_no) {
		return productMapper.selectBuyMinPriceByNo(p_no);
	}
	
	@Override
	public Map selectSellMinPriceByNo(int p_no) {
		return productMapper.selectSellMinPriceByNo(p_no);
	}
	
	@Override
	public List<PDDTO> selectAllMinPrice(int pageStart, int pageEnd) {
		List<Map> map = productMapper.selectAllMinPrice(pageStart, pageEnd);
		List<PDDTO> pddto = new ArrayList<PDDTO>();
		PDDTO pddd = null;
		for(int i=0; i<map.size(); i++) {
			String a = String.valueOf(map.get(i).get("p_no"));
			String b = String.valueOf(map.get(i).get("min_price"));
			if(b.equals("null")) {
				b = "구매입찰";
			}else {
				b= b+"원";
			}
			
			System.out.println(a);
			pddd = new PDDTO(a, b);
			pddto.add(pddd);
			
		}
		return pddto;
		
	}
	
	@Override
	public List<Product> searchAll(String p_name) {	
		return productMapper.searchAll(p_name);
	}
	
	@Override
	public List<Product> selectAll() {
		return productMapper.selectAll();
	}
	
	@Override
	public List<Product> selectAll_p(int pageStart, int pageEnd){
		return productMapper.selectAll_p(pageStart, pageEnd);
	}
	@Override
	public int product_countAll() {
		return productMapper.product_countAll();
	}
	@Override
	public List<Product> selectBrands(int br_no) {
		return productMapper.selectBrands(br_no);
	}
	
	
}