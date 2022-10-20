package com.itwill.service;

import java.util.List;

import com.itwill.dao.AddressDao;
import com.itwill.dto.Address;

public class AddressServiceImp implements AddressService{
	
	private AddressDao addressDao;

	@Override
	public int insert(Address address) {
		return addressDao.insert(address);
	}

	@Override
	public int update(Address address) {
		return addressDao.update(address);
	}

	@Override
	public int delete(int a_no) {
		return addressDao.delete(a_no);
	}

	@Override
	public List<Address> selectAllById(String m_id) {
		return addressDao.selectAllById(m_id);
	}
}
