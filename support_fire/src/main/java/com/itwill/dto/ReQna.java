package com.itwill.dto;

import java.util.Date;

public class ReQna {
	
	private int rq_no;
	private String rq_content;
	private Date rq_date;
	private int q_no;
	
	
	public ReQna() {
		// TODO Auto-generated constructor stub
	}


	public ReQna(int rq_no, String rq_content, Date rq_date, int q_no) {
		super();
		this.rq_no = rq_no;
		this.rq_content = rq_content;
		this.rq_date = rq_date;
		this.q_no = q_no;
	}


	public int getRq_no() {
		return rq_no;
	}


	public void setRq_no(int rq_no) {
		this.rq_no = rq_no;
	}


	public String getRq_content() {
		return rq_content;
	}


	public void setRq_content(String rq_content) {
		this.rq_content = rq_content;
	}


	public Date getRq_date() {
		return rq_date;
	}


	public void setRq_date(Date rq_date) {
		this.rq_date = rq_date;
	}


	public int getQ_no() {
		return q_no;
	}


	public void setQ_no(int q_no) {
		this.q_no = q_no;
	}


	@Override
	public String toString() {
		return "ReQna [rq_no=" + rq_no + ", rq_content=" + rq_content + ", rq_date=" + rq_date + ", q_no=" + q_no + "]";
	}

	
}
