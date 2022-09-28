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

	@Select(value = { "" })
	public Member selectMemberById(String m_id);
	
	@Select(value = { "" })
	public List<Member> selectAllMembers();
	
	@Insert(value = { "" })
	public int insertMember(Member member);
	
	@Update(value = { "" })
	public int updateMember(Member member);
	
	@Delete(value = { "" })
	public int deleteMember(String m_id);
	
}
