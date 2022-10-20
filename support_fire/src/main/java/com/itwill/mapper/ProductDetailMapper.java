package com.itwill.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
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
		
		//회원의 판매,구매찾기 3개제한
		@Select("select * from (select * from productDetail pd left outer join productsize ps on pd.ps_no = ps.ps_no left outer join product p on ps.p_no = p.p_no where pd.m_id=#{m_id} and pd.bt_no=#{bt_no} order by pd.pd_start desc) where ROWNUM <= 3")
		@ResultMap("productDetail")
		List<ProductDetail> selectByIdAndBtNo(String m_id, int bt_no);
		
		
		//회원의 판매,구매찾기
		@Select("select * from (select * from productDetail pd left outer join productsize ps on pd.ps_no = ps.ps_no left outer join product p on ps.p_no = p.p_no where pd.m_id=#{m_id} and pd.bt_no=#{bt_no} order by pd.pd_start desc)")
		@ResultMap("productDetail")
		List<ProductDetail> selectByIdAndBtNoAll(String m_id, int bt_no);
		
		
		//전체출력
		@Select("select * from productDetail pd left outer join productsize ps on pd.ps_no = ps.ps_no left outer join product p on ps.p_no = p.p_no")
		@ResultMap("productDetail")
		List<ProductDetail> selectAll();
		
		//제품 1개 판매 내역
		@Select("select * from productSize ps join (select * from productDetail where bt_no = 2 and b_no = 3) pd on pd.ps_no = ps.ps_no where ps.p_no = #{p_no} order by pd.pd_start asc")
		@ResultMap("productDetail")
		List<ProductDetail> selectSellListByNo(int p_no);
		
		//pd_no 생성 및 PK 출력
		@Insert("insert into productdetail values(#{pd_no}, #{pd_price}, sysdate, sysdate+7, #{productsize.ps_no}, #{m_id}, #{bt_no}, #{b_no})")
		@SelectKey(statement = "select PRODUCTDETAIL_PD_NO_SEQ.nextval from dual",
				   keyProperty = "pd_no",
				   before = true,
				   resultType = int.class)
		int insertSequence(ProductDetail productDetail);
		
		
}
