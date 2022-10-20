package com.itwill.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.itwill.dto.WishList;
@Mapper
public interface WishListMapper {
	
	@Insert("insert into wishlist values(QNA_Q_GROUPNO_SEQ.nextval, #{p_no}, #{m_id})")
	int insert(WishList wishList);
	
	int update();
	
	@Delete("delete from wishlist where w_no = #{w_no}")
	int delete(int w_no);
	
	@Select("select * from wishlist where m_id = #{m_id}")
	List<WishList> selectAll(String m_id);
}
