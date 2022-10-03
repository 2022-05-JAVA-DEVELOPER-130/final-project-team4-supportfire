package com.itwill.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import com.itwill.dto.ProductSize;

@Mapper
public interface ProductSizeMapper {
	//ps_no로 제품 삭제
	@Delete("delete from productsize where ps_no=#{ps_no}")
	int delete(int ps_size);
	
	//ps_no로 제품 1개 출력
	@Select("select * from productSize ps join product p on ps.p_no = p.p_no where ps.ps_no = #{ps_no}")
	@ResultMap("productSize")
	ProductSize selectByNo(int ps_no);
	
	//제품 사이즈 구매 최소 가격 출력
	@Select("select p.p_no, ps.s_size, min(pd.pd_price) from productsize ps join (select * from productdetail where bt_no = 1 and b_no = 1) pd on ps.ps_no = pd.ps_no join product p on ps.p_no = p.p_no where (p.p_no=#{p_no} and ps.s_size=#{s_size}) group by p.p_no, ps.s_size")
	@ResultMap("selectMap")
	Map selectBuyMinPriceBySize(int p_no, String s_size);
	
	//제품 사이즈 판매 최소 가격 출력
	@Select("select p.p_no, ps.s_size, min(pd.pd_price) from productsize ps join (select * from productdetail where bt_no = 2 and b_no = 1) pd on ps.ps_no = pd.ps_no join product p on ps.p_no = p.p_no where ps.s_size=#{s_size} group by p.p_no, ps.s_size")
	@ResultMap("selectMap")
	Map selectSellMinPriceBySize(int p_no, String s_size);
	
	//제품 
}
