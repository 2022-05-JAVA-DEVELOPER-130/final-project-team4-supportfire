package com.itwill.dao;

import java.util.List;

import com.itwill.dto.Address;

public interface AddressDao {

	int insert(Address address);
	
	int update(Address address);
	
	int delete(int a_no);
	
	List<Address> selectAllById(String m_id);
	
	Address selectMainAddr(String m_id);
	
	Address selectAllByNo(int a_no);
}
