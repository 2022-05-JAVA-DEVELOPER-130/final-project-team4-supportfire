package com.itwill.dto;

public class Notice {
	private int n_no;
	private String n_title;
	private String n_content;
	private String n_date;
	private int n_count;
	private int n_fix;
	
	
	public Notice() {
		// TODO Auto-generated constructor stub
	}

	public Notice(int n_no, String n_title, String n_content, String n_date, int n_count, int n_fix) {
		super();
		this.n_no = n_no;
		this.n_title = n_title;
		this.n_content = n_content;
		this.n_date = n_date;
		this.n_count = n_count;
		this.n_fix = n_fix;
	}

	public int getN_no() {
		return n_no;
	}

	public void setN_no(int n_no) {
		this.n_no = n_no;
	}

	public String getN_title() {
		return n_title;
	}

	public void setN_title(String n_title) {
		this.n_title = n_title;
	}

	public String getN_content() {
		return n_content;
	}

	public void setN_content(String n_content) {
		this.n_content = n_content;
	}

	public String getN_date() {
		return n_date;
	}

	public void setN_date(String n_date) {
		this.n_date = n_date;
	}

	public int getN_count() {
		return n_count;
	}

	public void setN_count(int n_count) {
		this.n_count = n_count;
	}

	public int getN_fix() {
		return n_fix;
	}

	public void setN_fix(int n_fix) {
		this.n_fix = n_fix;
	}

	@Override
	public String toString() {
		return "Notice [n_no=" + n_no + ", n_title=" + n_title + ", n_content=" + n_content + ", n_date=" + n_date
				+ ", n_count=" + n_count + ", n_fix=" + n_fix + "]";
	}
	

}
