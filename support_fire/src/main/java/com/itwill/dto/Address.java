package com.itwill.dto;


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
public class Address {
	
	private int a_no;
	private String a_name;
	private String a_phone;
	private String a_zipcode;
	private String a_streetAddr;
	private String a_detailAddr;
	private String m_id;
}
