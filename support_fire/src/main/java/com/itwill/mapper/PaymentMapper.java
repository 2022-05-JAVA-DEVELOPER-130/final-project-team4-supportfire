package com.itwill.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.itwill.dto.Payment;

@Mapper
public interface PaymentMapper {
	//결제번호로 결제정보조회
	@Select("select * from payment where pm_no=#{pm_no}")
	public Payment selectByPMNo(int pm_no);
	
	//주문번호로 결제정보조회
	@Select("select * from payment where o_no=#{o_no}")
	public Payment selectByONo(int o_no);
	
	//결제정보전제조회
	@Select("select * from payment")
	public List<Payment> selectAll();
	
	//주문번호로결제정보업데이트(배송지변경,이름,핸드폰,배송메모)
	@Update("update payment set pm_name=#{pm_name},pm_phone=#{pm_phone},pm_address=#{pm_address},pm_memo=#{pm_memo} where o_no=#{o_no}")
	public int updateByNo(Payment payment);
	
	//번호로결제내역삭제
	@Delete("delete from payment where pm_no=#{pm_no}")
	public int deleteByNo(int pm_no);
	
	//결제하나 생성
	@Insert("insert into payment(pm_no,pm_name,pm_phone,pm_address,pm_memo,o_no,pl_no) values (payment_pm_no_seq.nextval,#{pm_name},#{pm_phone},#{pm_address},#{pm_memo},#{o_no},#{pl_no})")
	public int insertPayment(Payment payment);
}
