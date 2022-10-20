package com.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.dao.AddressDao;
import com.itwill.dto.Address;
@Service
public class AddressServiceImp implements AddressService{
	@Autowired
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

	@Override
	public Address selectMainAddr(String m_id) {
		return addressDao.selectMainAddr(m_id);
	}

	@Override
	public Address selectAllByNo(int a_no) {
		return addressDao.selectAllByNo(a_no);
	}
}
