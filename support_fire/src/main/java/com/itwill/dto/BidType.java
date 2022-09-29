package com.itwill.dto;

public class BidType {
	
	private int bt_no;
	private String bt_type;
	
	public BidType() {
		
	}

	public BidType(int bt_no, String bt_type) {
		super();
		this.bt_no = bt_no;
		this.bt_type = bt_type;
	}

	public int getBt_no() {
		return bt_no;
	}

	public void setBt_no(int bt_no) {
		this.bt_no = bt_no;
	}

	public String getBt_type() {
		return bt_type;
	}

	public void setBt_type(String bt_type) {
		this.bt_type = bt_type;
	}

	@Override
	public String toString() {
		return "BidType [bt_no=" + bt_no + ", bt_type=" + bt_type + "]";
	}
	
	
}
