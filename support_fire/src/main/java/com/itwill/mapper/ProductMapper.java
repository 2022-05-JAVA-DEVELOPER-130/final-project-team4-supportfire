package com.itwill.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;

import com.itwill.dto.Product;
import com.itwill.dto.ProductDetail;
@Mapper
public interface ProductMapper {
	//제품 등록
	@Insert("insert into product values(PRODUCT_P_NO_SEQ.nextval, #{p_name}, #{p_date}, #{p_price}, #{p_image}, #{br_no})")
	int insert(Product product);
	
	//p_no로 제품 삭제
	@Delete("delete from product where p_no=#{p_no}")
	int delete(int p_no);
	
	//제품 1개 출력
	@Select("select * from product where p_no = #{p_no}")
	Product selectByNo(int p_no);
	
	//제품 1개 구매최소가격 출력
	@Select("select p.p_no, min(pd.pd_price) from productsize ps left outer join (select * from productdetail where bt_no = 1 and b_no = 1 and b_no = 1 and pd_end > sysdate) pd on ps.ps_no = pd.ps_no join product p on ps.p_no = p.p_no where p.p_no = #{p_no} group by p.p_no")
	@ResultMap("selectMap")
	Map selectBuyMinPriceByNo(int p_no);
	
	//제품 1개 판매최소가격 출력
	@Select("select p.p_no, min(pd.pd_price) from productsize ps left outer join (select * from productdetail where bt_no = 2 and b_no = 1 and b_no = 1 and pd_end > sysdate) pd on ps.ps_no = pd.ps_no join product p on ps.p_no = p.p_no where p.p_no = #{p_no} group by p.p_no")
	@ResultMap("selectMap")
	Map selectSellMinPriceByNo(int p_no);
	
	//제품 최소 판매가 전체 출력
	@Select("select p.p_no, min(pd.pd_price) from productsize ps left outer join (select * from productdetail where bt_no = 2 and b_no = 1) pd on ps.ps_no = pd.ps_no join product p on ps.p_no = p.p_no group by p.p_no ORDER BY p_no asc")
	@ResultMap("selectMap")
	List<Map> selectAllMinPrice();
	
	//제품 검색
	@Select("select * from product where p_name like '%'||#{p_name}||'%' or p_name like initcap('%'||#{p_name}||'%')")
	List<Product> searchAll(String p_name);
	
	@Select("select * from product")
	List<Product> selectAll();
	/*
	//제품 전체 출력(페이징)
	List<Product> selectAll(int pageStart, int pageEnd);
	*/
}
