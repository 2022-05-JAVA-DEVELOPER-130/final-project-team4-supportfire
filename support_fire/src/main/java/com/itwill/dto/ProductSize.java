package com.itwill.dto;

public class ProductSize {
	private int ps_no;
	private String s_size;
	private int p_no;
	
	public ProductSize() {
		// TODO Auto-generated constructor stub
	}

	public ProductSize(int ps_no, String s_size, int p_no) {
		super();
		this.ps_no = ps_no;
		this.s_size = s_size;
		this.p_no = p_no;
	}

	public int getPs_no() {
		return ps_no;
	}

	public void setPs_no(int ps_no) {
		this.ps_no = ps_no;
	}

	public String getS_size() {
		return s_size;
	}

	public void setS_size(String s_size) {
		this.s_size = s_size;
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	@Override
	public String toString() {
		return "ProductSize [ps_no=" + ps_no + ", s_size=" + s_size + ", p_no=" + p_no + "]";
	}

	
}
