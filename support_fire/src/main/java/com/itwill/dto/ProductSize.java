package com.itwill.dto;

public class ProductSize {
	private int ps_no;
	private String s_size;
	private Product product;
	
	public ProductSize() {
		// TODO Auto-generated constructor stub
	}

	public ProductSize(int ps_no, String s_size, Product product) {
		super();
		this.ps_no = ps_no;
		this.s_size = s_size;
		this.product = product;
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

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@Override
	public String toString() {
		return "ProductSize [ps_no=" + ps_no + ", s_size=" + s_size + ", product=" + product + "]";
	}

	
}
