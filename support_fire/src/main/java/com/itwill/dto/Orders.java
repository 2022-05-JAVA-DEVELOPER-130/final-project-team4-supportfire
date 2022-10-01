package com.itwill.dto;

import java.sql.Date;

public class Orders {
	private int o_no;
	private Date o_date;
	private int pd_no_purchase;
	private int pd_no_sell;
	private String o_status;
	
	public Orders() {
		// TODO Auto-generated constructor stub
	}

	public Orders(int o_no, Date o_date, int pd_no_purchase, int pd_no_sell, String o_status) {
		super();
		this.o_no = o_no;
		this.o_date = o_date;
		this.pd_no_purchase = pd_no_purchase;
		this.pd_no_sell = pd_no_sell;
		this.o_status = o_status;
	}

	public int getO_no() {
		return o_no;
	}

	public void setO_no(int o_no) {
		this.o_no = o_no;
	}

	public Date getO_date() {
		return o_date;
	}

	public void setO_date(Date o_date) {
		this.o_date = o_date;
	}

	public int getPd_no_purchase() {
		return pd_no_purchase;
	}

	public void setPd_no_purchase(int pd_no_purchase) {
		this.pd_no_purchase = pd_no_purchase;
	}

	public int getPd_no_sell() {
		return pd_no_sell;
	}

	public void setPd_no_sell(int pd_no_sell) {
		this.pd_no_sell = pd_no_sell;
	}

	public String getO_status() {
		return o_status;
	}

	public void setO_status(String o_status) {
		this.o_status = o_status;
	}

	@Override
	public String toString() {
		return "Orders [o_no=" + o_no + ", o_date=" + o_date + ", pd_no_purchase=" + pd_no_purchase + ", pd_no_sell="
				+ pd_no_sell + ", o_status=" + o_status + "]";
	}

	
	

	
}
