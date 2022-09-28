package com.itwill.dto;

public class Sizes {
	private String s_size;
	private int c_no;
	
	public Sizes() {
		// TODO Auto-generated constructor stub
	}

	public Sizes(String s_size, int c_no) {
		super();
		this.s_size = s_size;
		this.c_no = c_no;
	}

	public String getS_size() {
		return s_size;
	}

	public void setS_size(String s_size) {
		this.s_size = s_size;
	}

	public int getC_no() {
		return c_no;
	}

	public void setC_no(int c_no) {
		this.c_no = c_no;
	}

	@Override
	public String toString() {
		return "Sizes [s_size=" + s_size + ", c_no=" + c_no + "]";
	}

	
	
}
