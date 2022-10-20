package com.itwill.service;

import java.util.List;

import com.itwill.dto.Address;

public interface AddressService {
	
	
	int insert(Address address);
	
	int update(Address address);
	
	int delete(int a_no);
	
	List<Address> selectAllById(String m_id);
}
