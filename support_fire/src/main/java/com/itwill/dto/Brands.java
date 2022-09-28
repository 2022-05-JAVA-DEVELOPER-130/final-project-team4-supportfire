package com.itwill.dto;

public class Brands {
	private int br_no;
	private String br_name;
	private int c_no;
	
	public Brands() {
		// TODO Auto-generated constructor stub

	}
	public Brands(int br_no, String br_name, int c_no) {
		super();
		this.br_no = br_no;
		this.br_name = br_name;
		this.c_no = c_no;

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
	public int getC_no() {
		return c_no;
	}
	public void setC_no(int c_no) {
		this.c_no = c_no;

	}
	@Override
	public String toString() {
		return "Brands [br_no=" + br_no + ", br_name=" + br_name + ", c_no=" + c_no + "]";
	}
}
