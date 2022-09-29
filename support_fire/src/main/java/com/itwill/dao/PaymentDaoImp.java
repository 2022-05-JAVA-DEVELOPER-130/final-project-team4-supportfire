package com.itwill.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.dto.Payment;
import com.itwill.mapper.PaymentMapper;

@Repository
public class PaymentDaoImp implements PaymentDao {

	@Autowired
	private PaymentMapper paymentMapper;
	
	public PaymentDaoImp() {
		// TODO Auto-generated constructor stub
	}
	
	public void setPaymentMapper(PaymentMapper paymentMapper) {
		this.paymentMapper = paymentMapper;
	}

	@Override
	public Payment selectByPMNo(int pm_no) throws Exception {
		return paymentMapper.selectByPMNo(pm_no);
	}

	@Override
	public Payment selectByONo(int o_no) throws Exception {
		return paymentMapper.selectByONo(o_no);
	}

	@Override
	public List<Payment> selectAll() throws Exception {
		return paymentMapper.selectAll();
	}

	@Override
	public int updateByNo(Payment payment) throws Exception {
		return paymentMapper.updateByNo(payment);
	}

	@Override
	public int deleteByNo(int pm_no) throws Exception {
		return paymentMapper.deleteByNo(pm_no);
	}

	@Override
	public int insertPayment(Payment payment) throws Exception {
		return paymentMapper.insertPayment(payment);
	}

	
	
}
