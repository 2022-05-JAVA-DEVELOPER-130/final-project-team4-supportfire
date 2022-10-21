package com.itwill.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.itwill.dto.Member;

@Mapper
public interface MemberMapper {

	@Select("select * from member where m_id = #{m_id}")
	public Member selectMemberById(String m_id);
	
	@Select("select * from member order by m_name asc")
	public List<Member> selectAllMembers();
	
	@Insert("insert into member (m_id, m_password, m_name, m_phone, m_birth, m_email, m_gender, m_point, m_address) values (#{m_id}, #{m_password}, #{m_name}, #{m_phone}, #{m_birth}, #{m_email}, #{m_gender}, 1000, #{m_address})")
	public int insertMember(Member member);
	
	@Update("update member set m_password = #{m_password}, m_name = #{m_name}, m_phone= #{m_phone}, m_birth = #{m_birth}, m_email = #{m_email}, m_gender = #{m_gender}, m_address = #{m_address} where m_id = #{m_id}")
	public int updateMember(Member member);
	
	@Delete("delete from member where m_id = #{m_id}")
	public int deleteMember(String m_id);
	
	//핸드폰번호로 아이디찾기
	@Select("select RPAD(substr(m_id, 1, 4), lengthb(m_id), '*') m_id from member where m_phone=#{m_phone}")
	public String selectMemberByPhone(String m_phone);
	
	/*
	 * @Select("") public String selectMemberByPhoneId(String m_phone, String m_id);
	 */
}
