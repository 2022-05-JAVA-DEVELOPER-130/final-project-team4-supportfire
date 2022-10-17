package com.itwill.common;

import java.util.List;

public class ProductPageMakerDto<E> {
	private List<E> itemList;
	private ProductPageMaker pageMaker;

	public ProductPageMakerDto() {
	}

	public ProductPageMakerDto(List<E> itemList, ProductPageMaker pageMaker, int totRecordCount) {
		super();
		this.itemList = itemList;
		this.pageMaker = pageMaker;
	}

	public List<E> getItemList() {
		return itemList;
	}

	public void setItemList(List<E> itemList) {
		this.itemList = itemList;
	}

	public ProductPageMaker getPageMaker() {
		return pageMaker;
	}

	public void setPageMaker(ProductPageMaker pageMaker) {
		this.pageMaker = pageMaker;
	}

	@Override
	public String toString() {
		return "ProductPageMakerDto [itemList=" + itemList + ", pageMaker=" + pageMaker + ", totRecordCount="
				+ "]";
	}
	
	
}
