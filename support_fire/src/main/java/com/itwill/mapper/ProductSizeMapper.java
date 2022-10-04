package com.itwill.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import com.itwill.dto.ProductSize;

@Mapper
public interface ProductSizeMapper {
	//제품 사이즈 추가 
	@Insert("insert into productsize values(PRODUCTSIZE_PS_NO_SEQ.nextval, #{s_size}, #{product.p_no})")
	int insert(ProductSize productSize);
	
	//ps_no로 제품 삭제
	@Delete("delete from productsize where ps_no=#{ps_no}")
	int delete(int ps_size);
	
	//ps_no로 제품 1개 출력
	@Select("select * from productSize ps join product p on ps.p_no = p.p_no where ps.ps_no = #{ps_no}")
	@ResultMap("productSize")
	ProductSize selectByNo(int ps_no);
	
	//제품 사이즈 구매 최소 가격 출력
	@Select("select p.p_no, ps.s_size, min(pd.pd_price) from productsize ps left outer join (select * from productdetail where bt_no = 1 and b_no = 1) pd on ps.ps_no = pd.ps_no join product p on ps.p_no = p.p_no where p.p_no = #{p_no} group by p.p_no, ps.s_size")
	@ResultMap("selectMap")
	List<Map> selectBuyMinPriceByNo(int p_no);
	
	//제품 사이즈 판매 최소 가격 출력
	@Select("select p.p_no, ps.s_size, min(pd.pd_price) from productsize ps left outer join (select * from productdetail where bt_no = 2 and b_no = 1) pd on ps.ps_no = pd.ps_no join product p on ps.p_no = p.p_no where p.p_no = #{p_no} group by p.p_no, ps.s_size")
	@ResultMap("selectMap")
	List<Map> selectSellMinPriceByNo(int p_no);
	
	
}
