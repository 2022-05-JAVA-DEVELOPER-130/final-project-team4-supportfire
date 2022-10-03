package com.itwill.dto;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Address {

	private String zipcode;
	private String streetAddr;
	private String detailAddr;
	private String m_id;
}
