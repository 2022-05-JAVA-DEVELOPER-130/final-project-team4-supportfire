package com.itwill.dto;

public class Sizes {
	private String s_size;
	private Category category;
	
	public Sizes() {
		// TODO Auto-generated constructor stub
	}

	public Sizes(String s_size, Category category) {
		super();
		this.s_size = s_size;
		this.category = category;
	}

	public String getS_size() {
		return s_size;
	}

	public void setS_size(String s_size) {
		this.s_size = s_size;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "Sizes [s_size=" + s_size + ", category=" + category + "]";
	}
	
}
