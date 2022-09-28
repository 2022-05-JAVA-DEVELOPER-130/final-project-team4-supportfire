package com.itwill.dto;

public class PaymentList {
	private int pl_no;
	private String pl_method;
	
	public PaymentList() {
		// TODO Auto-generated constructor stub
	}

	public PaymentList(int pl_no, String pl_method) {
		super();
		this.pl_no = pl_no;
		this.pl_method = pl_method;
	}

	public int getPl_no() {
		return pl_no;
	}

	public void setPl_no(int pl_no) {
		this.pl_no = pl_no;
	}

	public String getPl_method() {
		return pl_method;
	}

	public void setPl_method(String pl_method) {
		this.pl_method = pl_method;
	}

	@Override
	public String toString() {
		return "PaymentList [pl_no=" + pl_no + ", pl_method=" + pl_method + "]";
	}
	
}
