package com.itwill.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.dto.ProductDetail;
import com.itwill.mapper.ProductDetailMapper;

@Repository
public class ProductDetailDaoImp  implements ProductDetailDao{
	@Autowired
	private ProductDetailMapper productDetailMapper;

	@Override
	public int insert(ProductDetail productDetail) {
		return productDetailMapper.insert(productDetail);
	}

	@Override
	public int update(ProductDetail productDetail) {
		return productDetailMapper.update(productDetail);
	}

	@Override
	public int updateByBidStatus(int b_no, int pd_no) {
		return productDetailMapper.updateByBidStatus(b_no, pd_no);
	}

	@Override
	public int delete(int pd_no) {
		return productDetailMapper.delete(pd_no);
	}

	@Override
	public ProductDetail selectByNo(int pd_no) {
		return productDetailMapper.selectByNo(pd_no);
	}

	@Override
	public ProductDetail selectById(String m_id) {
		return productDetailMapper.selectById(m_id);
	}

	@Override
	public ProductDetail selectByIdAndBtNo(String m_id, int bt_no) {
		return productDetailMapper.selectByIdAndBtNo(m_id, bt_no);
	}

	@Override
	public List<ProductDetail> selectAll() {
		return productDetailMapper.selectAll();
	}
	
	
	
}
