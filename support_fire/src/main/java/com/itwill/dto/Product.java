package com.itwill.dto;

public class Product {
	private int p_no;
	private String p_name;
	private String p_date;
	private int p_price;
	private String p_image;
	private int br_no;
	
	public Product() {
		// TODO Auto-generated constructor stub
	}

	public Product(int p_no, String p_name, String p_date, int p_price, String p_image, int br_no) {
		super();
		this.p_no = p_no;
		this.p_name = p_name;
		this.p_date = p_date;
		this.p_price = p_price;
		this.p_image = p_image;
		this.br_no = br_no;
	}
	
	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_date() {
		return p_date;
	}

	public void setP_date(String p_date) {
		this.p_date = p_date;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public String getP_image() {
		return p_image;
	}

	public void setP_image(String p_image) {
		this.p_image = p_image;
	}

	public int getBr_no() {
		return br_no;
	}

	public void setBr_no(int br_no) {
		this.br_no = br_no;
	}

	@Override
	public String toString() {
		return "Product [p_no=" + p_no + ", p_name=" + p_name + ", p_date=" + p_date + ", p_price=" + p_price
				+ ", p_image=" + p_image + ", br_no=" + br_no + "]";
	}

	
}
