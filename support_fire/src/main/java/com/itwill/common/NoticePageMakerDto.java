package com.itwill.common;

import java.util.List;

public class NoticePageMakerDto<E> {
	private List<E> itemList;
	private NoticePageMaker pageMaker;
	private int totRecordCount;

	public NoticePageMakerDto() {
	}

	public NoticePageMakerDto(List<E> itemList, NoticePageMaker pageMaker, int totRecordCount) {
		super();
		this.itemList = itemList;
		this.pageMaker = pageMaker;
		this.totRecordCount = totRecordCount;
	}

	public List<E> getItemList() {
		return itemList;
	}

	public void setItemList(List<E> itemList) {
		this.itemList = itemList;
	}

	public NoticePageMaker getPageMaker() {
		return pageMaker;
	}

	public void setPageMaker(NoticePageMaker pageMaker) {
		this.pageMaker = pageMaker;
	}

	public int getTotRecordCount() {
		return totRecordCount;
	}

	public void setTotRecordCount(int totRecordCount) {
		this.totRecordCount = totRecordCount;
	}

	@Override
	public String toString() {
		return "NoticePageMakerDto [itemList=" + itemList + ", pageMaker=" + pageMaker + ", totRecordCount="
				+ totRecordCount + "]";
	}

	
	
}
