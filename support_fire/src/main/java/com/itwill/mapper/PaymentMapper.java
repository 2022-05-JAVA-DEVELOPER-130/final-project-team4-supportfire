package com.itwill.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.itwill.dto.Payment;

@Mapper
public interface PaymentMapper {
	//
	public Payment selectByPMNo(int pm_no);
	public Payment selectByONo(int o_no);
	public List<Payment> selecAll();
	public int updateByNo(int o_no);
	public int deleteByNo(int pm_no);
	public int insertPayment(Payment payment);
}
