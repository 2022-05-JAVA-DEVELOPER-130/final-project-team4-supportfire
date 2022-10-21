package com.itwill.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.itwill.dto.Address;
@Mapper
public interface AddressMapper {
	
	@Insert("insert into address values(ADDRESS_A_NO_SEQ.nextval, #{a_name}, #{a_phone}, #{a_zipcode}, #{a_streetAddr}, #{a_detailAddr}, #{m_id})")
	int insert(Address address);
	
	@Update("update address set a_name=#{a_name}, a_phone=#{a_phone}, a_zipcode=#{a_zipcode}, a_streetAddr=#{a_streetAddr}, a_detailAddr=#{a_detailAddr} where a_no=#{a_no}")
	int update(Address address);
	
	@Delete("delete from address where a_no = #{a_no}")
	int delete(int a_no);
	
	@Select("select * from member m join address a on m.m_address <> a.a_streetAddr and m.m_id = a.m_id where m.m_id = #{m_id}")
	List<Address> selectAllById(String m_id);
	
	@Select("select * from address where a_no=#{a_no}")
	Address selectAllByNo(int a_no);
	
	@Select("select * from member m join address a on m.m_address = a.a_streetAddr where m.m_id = #{m_id}")
	Address selectMainAddr(String m_id);
	
}
