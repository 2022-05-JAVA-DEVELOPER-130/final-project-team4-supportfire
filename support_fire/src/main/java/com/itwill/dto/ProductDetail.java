package com.itwill.dto;

import java.sql.Date;

public class ProductDetail {
	private int pd_no;
	private int pd_price;
	private Date pd_start;
	private Date pd_end;
	private ProductSize productsize;
	private String m_id;
	private int bt_no;
	private int b_no;
	
	public ProductDetail() {
		// TODO Auto-generated constructor stub
	}

	public ProductDetail(int pd_no, int pd_price, Date pd_start, Date pd_end, ProductSize productsize, String m_id,
			int bt_no, int b_no) {
		super();
		this.pd_no = pd_no;
		this.pd_price = pd_price;
		this.pd_start = pd_start;
		this.pd_end = pd_end;
		this.productsize = productsize;
		this.m_id = m_id;
		this.bt_no = bt_no;
		this.b_no = b_no;
	}

	public int getPd_no() {
		return pd_no;
	}

	public void setPd_no(int pd_no) {
		this.pd_no = pd_no;
	}

	public int getPd_price() {
		return pd_price;
	}

	public void setPd_price(int pd_price) {
		this.pd_price = pd_price;
	}

	public Date getPd_start() {
		return pd_start;
	}

	public void setPd_start(Date pd_start) {
		this.pd_start = pd_start;
	}

	public Date getPd_end() {
		return pd_end;
	}

	public void setPd_end(Date pd_end) {
		this.pd_end = pd_end;
	}

	public ProductSize getProductsize() {
		return productsize;
	}

	public void setProductsize(ProductSize productsize) {
		this.productsize = productsize;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public int getBt_no() {
		return bt_no;
	}

	public void setBt_no(int bt_no) {
		this.bt_no = bt_no;
	}

	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	@Override
	public String toString() {
		return "ProductDetail [pd_no=" + pd_no + ", pd_price=" + pd_price + ", pd_start=" + pd_start + ", pd_end="
				+ pd_end + ", productsize=" + productsize + ", m_id=" + m_id + ", bt_no=" + bt_no + ", b_no=" + b_no
				+ "]";
	}

	
}
