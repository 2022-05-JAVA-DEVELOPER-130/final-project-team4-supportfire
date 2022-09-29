package com.itwill.service;

import java.util.List;

import com.itwill.dto.Payment;

public interface PaymentService {
	
	Payment selectByPMNo(int pm_no) throws Exception;
	
	Payment selectByONo(int o_no) throws Exception;
	
	List<Payment> selectAll() throws Exception;
	
	int updateByNo(Payment payment) throws Exception;
	
	int deleteByNo(int pm_no) throws Exception;
	
	int insertPayment(Payment payment) throws Exception;
	
}
