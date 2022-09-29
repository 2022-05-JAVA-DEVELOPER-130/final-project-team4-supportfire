package com.itwill.dto;

public class Payment {	
	private int pm_no;
	private String pm_name;
	private String pm_phone;
	private String pm_address;
	private String pm_memo;
	private int o_no;
	private int pl_no;
	
	public Payment() {
		// TODO Auto-generated constructor stub
	}

	public Payment(int pm_no, String pm_name, String pm_phone, String pm_address, String pm_memo, int o_no, int pl_no) {
		super();
		this.pm_no = pm_no;
		this.pm_name = pm_name;
		this.pm_phone = pm_phone;
		this.pm_address = pm_address;
		this.pm_memo = pm_memo;
		this.o_no = o_no;
		this.pl_no = pl_no;
	}

	public int getPm_no() {
		return pm_no;
	}

	public void setPm_no(int pm_no) {
		this.pm_no = pm_no;
	}

	public String getPm_name() {
		return pm_name;
	}

	public void setPm_name(String pm_name) {
		this.pm_name = pm_name;
	}

	public String getPm_phone() {
		return pm_phone;
	}

	public void setPm_phone(String pm_phone) {
		this.pm_phone = pm_phone;
	}

	public String getPm_address() {
		return pm_address;
	}

	public void setPm_address(String pm_address) {
		this.pm_address = pm_address;
	}

	public String getPm_memo() {
		return pm_memo;
	}

	public void setPm_memo(String pm_memo) {
		this.pm_memo = pm_memo;
	}

	public int getO_no() {
		return o_no;
	}

	public void setO_no(int o_no) {
		this.o_no = o_no;
	}

	public int getPl_no() {
		return pl_no;
	}

	public void setPl_no(int pl_no) {
		this.pl_no = pl_no;
	}

	@Override
	public String toString() {
		return "Payment [pm_no=" + pm_no + ", pm_name=" + pm_name + ", pm_phone=" + pm_phone + ", pm_address="
				+ pm_address + ", pm_memo=" + pm_memo + ", o_no=" + o_no + ", pl_no=" + pl_no + "]";
	}

	
}
