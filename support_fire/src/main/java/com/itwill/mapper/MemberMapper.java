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
	
	@Insert("insert into member (m_id, m_password, m_name, m_phone, m_birth, m_email, m_gender, m_point) values (#{m_id}, #{m_password}, #{m_name}, #{m_phone}, #{m_birth}, #{m_email}, #{m_gender}, #{m_point})")
	public int insertMember(Member member);
	
	@Update("update member set m_password = #{m_password}, m_name = #{m_name}, m_phone= #{m_phone}, m_birth = #{m_birth}, m_email = #{m_email}, m_gender = #{m_gender}, m_point = #{m_point} where m_id = #{m_id}")
	public int updateMember(Member member);
	
	@Delete("delete from member where m_id = #{m_id}")
	public int deleteMember(String m_id);
	
}
