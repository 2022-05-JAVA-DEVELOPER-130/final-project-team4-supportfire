package com.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.dao.PaymentDao;
import com.itwill.dto.Payment;

@Service
public class PaymentServiceImp implements PaymentService {

	@Autowired
	public PaymentDao paymentDao;
	
	public PaymentServiceImp() {
		// TODO Auto-generated constructor stub
	}
	
	public PaymentServiceImp(PaymentDao paymentDao) {
		super();
		this.paymentDao = paymentDao;
	}

	public void setPaymentDao(PaymentDao paymentDao) {
		this.paymentDao = paymentDao;
	}


	//pm_no로 결제내역조회
	@Override
	public Payment selectByPMNo(int pm_no) throws Exception {
		// TODO Auto-generated method stub
		return paymentDao.selectByPMNo(pm_no);
	}

	//o_no로 결제내역조회
	@Override
	public Payment selectByONo(int o_no) throws Exception {
		// TODO Auto-generated method stub
		return paymentDao.selectByONo(o_no);
	}

	//결제내역전체조회
	@Override
	public List<Payment> selectAll() throws Exception {
		// TODO Auto-generated method stub
		return paymentDao.selectAll();
	}

	//결제번호로 배송지 업데이트
	@Override
	public int updateByNo(Payment payment) throws Exception {
		// TODO Auto-generated method stub
		return paymentDao.updateByNo(payment);
	}

	//결제번호로 결제내역삭제
	@Override
	public int deleteByNo(int pm_no) throws Exception {
		// TODO Auto-generated method stub
		return paymentDao.deleteByNo(pm_no);
	}

	//결제하기 
	@Override
	public int insertPayment(Payment payment) throws Exception {
		// TODO Auto-generated method stub
		return paymentDao.insertPayment(payment);
	}

}
