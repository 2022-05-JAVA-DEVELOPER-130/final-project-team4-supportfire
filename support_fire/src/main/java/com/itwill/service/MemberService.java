package com.itwill.service;


import java.util.List;

import com.itwill.dto.Member;

public interface MemberService {

	Member selectById(String m_id) throws Exception;
	
	List<Member> selectAllmembers() throws Exception;
	
	int insertMember(Member member) throws Exception;
	
	int updateMember(Member member) throws Exception;
	
	int deleteMember(String m_id) throws Exception;
	
	int login(String m_id, String password) throws Exception;
	
	//핸드폰번호로 아이디찾기
	public String selectMemberByPhone(String m_phone) throws Exception;
	
}
