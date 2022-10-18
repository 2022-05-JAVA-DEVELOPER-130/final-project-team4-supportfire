package com.itwill.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class ProductDetail {
	private int pd_no;
	private int pd_price;
	private String pd_start;
	private String pd_end;
	private ProductSize productsize;
	private String m_id;
	private int bt_no;
	private int b_no;
	
	
}
