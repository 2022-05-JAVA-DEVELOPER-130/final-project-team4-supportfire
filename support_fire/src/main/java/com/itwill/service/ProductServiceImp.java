package com.itwill.service;

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
import com.itwill.dto.Product;

public class ProductServiceImp implements ProductService{
	
	@Autowired
	private ProductDao productDao;
	
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
	public Map selectAllMinPrice() {
		List<Map> map1 = productDao.selectAllMinPrice();
		Map minPriceMap = new HashMap();
		for (Map map : map1) {
			String p_noStr = String.valueOf(map.get("p_no"));
			int p_no = Integer.parseInt(p_noStr);
			String p_price = String.valueOf(map.get("min_price"));
			if(p_price == "null") {
				p_price = "구매입찰";
				minPriceMap.put(p_no, p_price);
			} else {
				minPriceMap.put(p_no, p_price+"원");
			}
			
		}
			return minPriceMap;
	}
	/*
	@Override
	public List<Product> searchAll(String p_name) {
		return productDao.searchAll(p_name);
	}
	public ProductPageMakerDto<Product> selectAll(int currentPage) throws Exception {
		ProductPageMaker pageMaker = new ProductPageMaker(0, 5, 5, currentPage);
		List<Product> productList = productDao.selectAll(pageMaker.getPageBegin(), pageMaker.getPageEnd());
		ProductPageMakerDto<Product> pageMakerProductList = new ProductPageMakerDto<Product>(productList, pageMaker, currentPage);
		
		//게시글 제목 수정
				for(Product product:pageMakerProductList.getItemList()) {
					//getTitleString(notice);
				}
				return pageMakerProductList;
			}
	public Product getTitleString(Product product) {
		StringBuilder title = new StringBuilder(128);
		String t = product.getP_name();
		if (t.length() > 15) {
			// t = t.substring(0,15);
			// t = t+"...";
			t = String.format("%s...", t.substring(0, 15));
		}
		

		title.append(t.replace(" ", "&nbsp;"));
		product.setP_name(title.toString());
		
		return product;
	}
	*/

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
}
