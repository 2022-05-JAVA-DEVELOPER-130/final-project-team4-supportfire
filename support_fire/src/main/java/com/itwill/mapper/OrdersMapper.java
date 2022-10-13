package com.itwill.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import com.itwill.dto.Orders;
import com.itwill.dto.ProductDetail;

@Mapper
public interface OrdersMapper {
	//고객한명구매내역전체보기
	@Select("select * from orders o join productdetail pd on o.pd_no_purchase=pd.pd_no where m_id=#{m_id}")
	//@ResultMap("selectByNo")
	public List<Orders> selectByIdPurchase(String m_id);
	
	//고객한명판매내역전체보기
	@Select("select * from orders o join productdetail pd on o.pd_no_sell=pd.pd_no where m_id=#{m_id}")
	//@ResultMap("selectByNo")
	public List<Orders> selectByIdSell(String m_id);
	
	//주문번호로주문한개조회
	@Select("select * from orders where o_no=#{o_no}")
	//@ResultMap("selectByNo")
	public Orders selectByNo(int o_no);
	
	//주문전체조회
	@Select("select * from orders")
	//@ResultMap("selectByNo")
	public List<Orders> selectAll();
	
	//주문번호한개삭제
	@Delete("delete from orders where o_no=#{o_no}")
	public int deleteByNo(int o_no);
	
	//주문정보한개업데이트(주문상태변경)
	@Update("update orders set o_status=#{o_status} where o_no=#{o_no}")
	public int updateByNo(Orders orders);
	
	//주문한개생성
	@Insert("insert into orders (o_no, o_date, pd_no_purchase,pd_no_sell,o_status) values (orders_o_no_seq.nextval,sysdate, #{pd_no_purchase}, #{pd_no_sell}, #{o_status})")
	public int insertOrder(Orders orders);
	
	@Insert("insert into orders values(#{o_no}, sysdate, #{pd_no_purchase}, #{pd_no_sell}, #{o_status})")
	@SelectKey(statement = "select ORDERS_O_NO_SEQ.nextval from dual",
			   keyProperty = "o_no",
			   before = true,
			   resultType = int.class)
	int insertSequence(Orders orders);
}
