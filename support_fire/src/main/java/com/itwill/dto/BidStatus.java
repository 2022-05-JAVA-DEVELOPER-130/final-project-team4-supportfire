package com.itwill.dto;

public class BidStatus {
	
	private int b_no;
	private String b_status;
	
	public BidStatus() {
		// TODO Auto-generated constructor stub
	}

	public BidStatus(int b_no, String b_status) {
		super();
		this.b_no = b_no;
		this.b_status = b_status;
	}

	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	public String getB_status() {
		return b_status;
	}

	public void setB_status(String b_status) {
		this.b_status = b_status;
	}

	@Override
	public String toString() {
		return "BidStatus [b_no=" + b_no + ", b_status=" + b_status + "]";
	}
	
	
	
}
