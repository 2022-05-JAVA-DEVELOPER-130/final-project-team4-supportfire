package com.itwill.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.itwill.dto.ProductDetail;
@Mapper
public interface ProductDetailMapper {
		//제품추가
		@Insert("insert into productdetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, #{pd_price}, sysdate, sysdate+7, #{productsize.ps_no}, #{m_id}, #{bt_no}, #{b_no})")
		int insert(ProductDetail productDetail);
		
		//제품가격업데이트
		@Update("update productdetail set pd_price=#{pd_price} where pd_no=#{pd_no}")
		int update(ProductDetail productDetail);
		
		//제품상태업데이트
		@Update("update productdetail set b_no=#{b_no} where pd_no=#{pd_no}")
		int updateByBidStatus(int b_no, int pd_no);
		
		//제품삭제
		@Delete("delete from productdetail where pd_no=#{pd_no}")
		int delete(int pd_no);
		
		//제품넘버로찾기
		@Select("select * from productDetail pd left outer join productsize ps on pd.ps_no = ps.ps_no left outer join product p on ps.p_no = p.p_no where pd.pd_no=#{pd_no}")
		@ResultMap("productDetail")
		ProductDetail selectByNo(int pd_no);
		
		//회원아이디로찾기
		@Select("select * from productDetail pd left outer join productsize ps on pd.ps_no = ps.ps_no left outer join product p on ps.p_no = p.p_no where pd.m_id=#{m_id}")
		@ResultMap("productDetail")
		List<ProductDetail> selectById(String m_id);
		
		//회원의 판매,구매찾기
		@Select("select * from productDetail pd left outer join productsize ps on pd.ps_no = ps.ps_no left outer join product p on ps.p_no = p.p_no where pd.m_id=#{m_id} and pd.bt_no=#{bt_no}")
		@ResultMap("productDetail")
		List<ProductDetail> selectByIdAndBtNo(String m_id, int bt_no);
		
		//전체출력
		@Select("select * from productDetail pd left outer join productsize ps on pd.ps_no = ps.ps_no left outer join product p on ps.p_no = p.p_no")
		@ResultMap("productDetail")
		List<ProductDetail> selectAll();
	
}
