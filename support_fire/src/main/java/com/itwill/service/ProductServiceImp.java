package com.itwill.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.itwill.common.NoticePageMaker;
import com.itwill.common.NoticePageMakerDto;
import com.itwill.common.ProductPageMaker;
import com.itwill.common.ProductPageMakerDto;
import com.itwill.dao.ProductDao;
import com.itwill.dto.Notice;
import com.itwill.dto.PDDTO;
import com.itwill.dto.Product;
import com.itwill.dto.Qna;

public class ProductServiceImp implements ProductService{
	
	@Autowired
	private ProductDao productDao;
	
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}
	public ProductServiceImp() {
		
	}
	
	@Override
	public int insert(Product product) {
		return productDao.insert(product);
	}

	@Override
	public int delete(int p_no) {
		return productDao.delete(p_no);
	}

	@Override
	public Product selectByNo(int p_no) {
		return productDao.selectByNo(p_no);
	}

	@Override
	public Map selectBuyMinPriceByNo(int p_no) {
		return productDao.selectBuyMinPriceByNo(p_no);
	}

	@Override
	public Map selectSellMinPriceByNo(int p_no) {
		return productDao.selectSellMinPriceByNo(p_no);
	}

	// min_price 값이 null 일때 구매 입찰로 표시 구현중
	

	@Override
	public List<Product> searchAll(String p_name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Product> selectAll() {
		// TODO Auto-generated method stub
		return productDao.selectAll();
	}
	@Override
	public int product_countAll() {
		return productDao.product_countAll();
	}
	@Override
	public List<Product> selectBrands(int br_no) {
		//System.out.println(productDao.selectBrands(br_no));
		return productDao.selectBrands(br_no);
	}
	@Override
	public ProductPageMakerDto<Product> selectAll_p(int currentPage) {
		int totProductCount = product_countAll();
		List<Product> listProduct = new ArrayList<Product>();
		Product p = null;
		ProductPageMaker pageMaker = new ProductPageMaker(totProductCount, currentPage, 9, 5);
		List<Product> productList = productDao.selectAll_p(pageMaker.getPageBegin(), pageMaker.getPageEnd());
		List<PDDTO> pddto = productDao.selectAllMinPrice(pageMaker.getPageBegin(), pageMaker.getPageEnd());
		System.out.println(productList);
		System.out.println(pddto);
		/*
		for (PDDTO pddto1 : pddto) {
			p.setP_no(Integer.parseInt(pddto1.getPd_no()));
			p.setP_price(Integer.parseInt(pddto1.getMin_price()));
			listProduct.add(p);
		}
		*/
		ProductPageMakerDto<Product> pageMakerProductList = new ProductPageMakerDto<Product>(productList, pddto, pageMaker, totProductCount);
		
		//게시글 제목 수정
		for(Product product:pageMakerProductList.getItemList()) {
			//getTitleString(notice);
		}
		return pageMakerProductList;
	}
	
}
