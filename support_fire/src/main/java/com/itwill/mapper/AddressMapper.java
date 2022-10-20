package com.itwill.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.itwill.dto.Address;

public interface AddressMapper {
	
	@Insert("insert into address values(seq, #{a_name}, #{a_phone}, #{a_zipcode}, #{a_streetAddr}, #{a_detailAddr}, #{m_id})")
	int insert(Address address);
	
	@Update("update address set(a_name=#{a_name}, a_phone=#{a_phone}, a_zipcode=#{a_zipcode}, a_streetAddr=#{a_streetAddr}) where a_no=#{a_no}")
	int update(Address address);
	
	@Delete("delete from address where a_no = #{a_no}")
	int delete(int a_no);
	
	@Select("select * from adress where m_id=#{m_id}")
	List<Address> selectAllById(String m_id);
	
}
