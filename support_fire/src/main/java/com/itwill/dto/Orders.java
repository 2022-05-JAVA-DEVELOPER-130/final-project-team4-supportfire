package com.itwill.dto;

import java.sql.Date;

public class Orders {
	private String o_no;
	private Date o_date;
	private ProductDetail po_no_purchase;
	private ProductDetail po_no_sell;
	private String o_status;
	
	public Orders() {
		// TODO Auto-generated constructor stub
	}

	public Orders(String o_no, Date o_date, ProductDetail po_no_purchase, ProductDetail po_no_sell, String o_status) {
		super();
		this.o_no = o_no;
		this.o_date = o_date;
		this.po_no_purchase = po_no_purchase;
		this.po_no_sell = po_no_sell;
		this.o_status = o_status;
	}

	public String getO_no() {
		return o_no;
	}

	public void setO_no(String o_no) {
		this.o_no = o_no;
	}

	public Date getO_date() {
		return o_date;
	}

	public void setO_date(Date o_date) {
		this.o_date = o_date;
	}

	public ProductDetail getPo_no_purchase() {
		return po_no_purchase;
	}

	public void setPo_no_purchase(ProductDetail po_no_purchase) {
		this.po_no_purchase = po_no_purchase;
	}

	public ProductDetail getPo_no_sell() {
		return po_no_sell;
	}

	public void setPo_no_sell(ProductDetail po_no_sell) {
		this.po_no_sell = po_no_sell;
	}

	public String getO_status() {
		return o_status;
	}

	public void setO_status(String o_status) {
		this.o_status = o_status;
	}

	@Override
	public String toString() {
		return "Orders [o_no=" + o_no + ", o_date=" + o_date + ", po_no_purchase=" + po_no_purchase + ", po_no_sell="
				+ po_no_sell + ", o_status=" + o_status + "]";
	}
	

	
}
