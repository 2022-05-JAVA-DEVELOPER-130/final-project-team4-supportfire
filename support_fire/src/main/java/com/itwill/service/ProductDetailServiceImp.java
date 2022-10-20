package com.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.dao.ProductDetailDao;
import com.itwill.dto.ProductDetail;

@Service
public class ProductDetailServiceImp implements ProductDetailService{
	
	@Autowired
	private ProductDetailDao productDetailDao;

	@Override
	public int insert(ProductDetail productDetail) {
		return productDetailDao.insert(productDetail);
	}

	@Override
	public int update(ProductDetail productDetail) {
		return productDetailDao.update(productDetail);
	}

	@Override
	public int updateByBidStatus(int b_no, int pd_no) {
		return productDetailDao.updateByBidStatus(b_no, pd_no);
	}

	@Override
	public int delete(int pd_no) {
		return productDetailDao.delete(pd_no);
	}

	@Override
	public ProductDetail selectByNo(int pd_no) {
		return productDetailDao.selectByNo(pd_no);
	}

	@Override
	public List<ProductDetail> selectById(String m_id) {
		return productDetailDao.selectById(m_id);
	}

	@Override
	public List<ProductDetail> selectByIdAndBtNo(String m_id, int bt_no) {
		return productDetailDao.selectByIdAndBtNo(m_id, bt_no);
	}

	@Override
	public List<ProductDetail> selectAll() {
		return productDetailDao.selectAll();
	}

	@Override
	public int insertSequence(ProductDetail productDetail) {
		return productDetailDao.insertSequence(productDetail);
	}

	@Override
	public List<ProductDetail> selectSellListByNo(int p_no) {
		return productDetailDao.selectSellListByNo(p_no);
	}

	@Override
	public List<ProductDetail> selectByIdAndBtNoAll(String m_id, int bt_no) {
		return productDetailDao.selectByIdAndBtNoAll(m_id, bt_no);
	}
	
	
}
