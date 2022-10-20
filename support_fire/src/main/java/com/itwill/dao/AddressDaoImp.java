package com.itwill.dao;

import java.util.List;

import com.itwill.dto.Address;
import com.itwill.mapper.AddressMapper;

public class AddressDaoImp implements AddressDao{
	
	private AddressMapper addressMapper;
	
	@Override
	public int insert(Address address) {
		return addressMapper.insert(address);
	}

	@Override
	public int update(Address address) {
		return addressMapper.update(address);
	}

	@Override
	public int delete(int a_no) {
		return addressMapper.delete(a_no);
	}

	@Override
	public List<Address> selectAllById(String m_id) {
		return addressMapper.selectAllById(m_id);
	}

	@Override
	public Address selectMainAddr(String m_id) {
		return addressMapper.selectMainAddr(m_id);
	}

}
