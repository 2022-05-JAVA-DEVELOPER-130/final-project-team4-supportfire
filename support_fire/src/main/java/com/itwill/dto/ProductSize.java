package com.itwill.dto;

public class ProductSize {
	private int ps_no;
	private Sizes sizes;
	private Product product;
	
	public ProductSize() {
		// TODO Auto-generated constructor stub
	}

	public ProductSize(int ps_no, Sizes sizes, Product product) {
		super();
		this.ps_no = ps_no;
		this.sizes = sizes;
		this.product = product;
	}

	public int getPs_no() {
		return ps_no;
	}

	public void setPs_no(int ps_no) {
		this.ps_no = ps_no;
	}

	public Sizes getSizes() {
		return sizes;
	}

	public void setSizes(Sizes sizes) {
		this.sizes = sizes;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@Override
	public String toString() {
		return "ProductSize [ps_no=" + ps_no + ", sizes=" + sizes + ", product=" + product + "]";
	}
	
	
	
}
