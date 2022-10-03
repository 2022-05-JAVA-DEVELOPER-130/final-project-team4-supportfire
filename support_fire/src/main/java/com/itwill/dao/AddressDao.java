package com.itwill.dao;

import com.itwill.dto.Address;

public interface AddressDao {

	Address selectAddressByMemberId(String m_id) throws Exception;
	
	int insertAddress(Address address) throws Exception;
	
	
	
}
