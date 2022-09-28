package com.itwill.dto;

public class Brands {
	private int br_no;
	private String br_name;
	private Category category;
	
	public Brands() {
		// TODO Auto-generated constructor stub
	}

	public Brands(int br_no, String br_name, Category category) {
		super();
		this.br_no = br_no;
		this.br_name = br_name;
		this.category = category;
	}

	public int getBr_no() {
		return br_no;
	}

	public void setBr_no(int br_no) {
		this.br_no = br_no;
	}

	public String getBr_name() {
		return br_name;
	}

	public void setBr_name(String br_name) {
		this.br_name = br_name;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "Brands [br_no=" + br_no + ", br_name=" + br_name + ", category=" + category + "]";
	}
	
	
}
