package com.itwill.dao;

import java.util.List;

import com.itwill.dto.ProductDetail;

public interface ProductDetailDao {
	
	int insert(ProductDetail productDetail);
	
	//제품가격업데이트
	int update(ProductDetail productDetail);
	
	//제품상태업데이트
	int updateByBidStatus(int b_no, Integer pd_no);
	
	//제품삭제
	int delete(Integer pd_no);
	
	//제품넘버로찾기
	ProductDetail selectByNo(int pd_no);
	
	//회원아이디로찾기
	List<ProductDetail> selectById(String m_id);
	
	//회원의 판매,구매찾기
	List<ProductDetail> selectByIdAndBtNo(String m_id, int bt_no);
	
	List<ProductDetail> selectByIdAndBtNoAll(String m_id, int bt_no);
	
	//전체출력
	List<ProductDetail> selectAll();
	
	//제품 1개 판매 내역
	List<ProductDetail> selectSellListByNo(int p_no);
	
	//pd_no 생성 및 PK 출력
	int insertSequence(ProductDetail productDetail);
}
