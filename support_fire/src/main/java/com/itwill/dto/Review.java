package com.itwill.dto;

public class Review {
	private int r_no;
	private String r_content;
	private String r_date;
	private int r_star;
	private String m_id;
	private int p_no;
	
	public Review() {
		
	}

	public Review(int r_no, String r_content, String r_date, int r_star, String m_id, int p_no) {
		super();
		this.r_no = r_no;
		this.r_content = r_content;
		this.r_date = r_date;
		this.r_star = r_star;
		this.m_id = m_id;
		this.p_no = p_no;
	}

	public int getR_no() {
		return r_no;
	}

	public void setR_no(int r_no) {
		this.r_no = r_no;
	}

	public String getR_content() {
		return r_content;
	}

	public void setR_content(String r_content) {
		this.r_content = r_content;
	}

	public String getR_date() {
		return r_date;
	}

	public void setR_date(String r_date) {
		this.r_date = r_date;
	}

	public int getR_star() {
		return r_star;
	}

	public void setR_star(int r_star) {
		this.r_star = r_star;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	@Override
	public String toString() {
		return "Review [r_no=" + r_no + ", r_content=" + r_content + ", r_date=" + r_date + ", r_star=" + r_star
				+ ", m_id=" + m_id + ", p_no=" + p_no + "]";
	}
	
	
	
	
	
}
