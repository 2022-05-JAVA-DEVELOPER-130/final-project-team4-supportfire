package com.itwill.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.dto.Member;
import com.itwill.mapper.MemberMapper;

@Repository
public class MemberDaoImp implements MemberDao{

	@Autowired
	private MemberMapper memberMapper;
	
	public MemberDaoImp() {}

	public void setMemberMapper(MemberMapper memberMapper) {
		this.memberMapper = memberMapper;
	}


	@Override
	public Member selectMemberById(String m_id) throws Exception {
		return memberMapper.selectMemberById(m_id);
	}

	@Override
	public List<Member> selectAllMembers() throws Exception {
		return memberMapper.selectAllMembers();
	}

	@Override
	public int insertMember(Member member) throws Exception {
		return memberMapper.insertMember(member);
	}

	@Override
	public int updateMember(Member member) throws Exception {
		return memberMapper.updateMember(member);
	}

	@Override
	public int deleteMember(String m_id) throws Exception {
		return memberMapper.deleteMember(m_id);
	}

	@Override
	public String selectMemberByPhone(String m_phone) throws Exception{
		return memberMapper.selectMemberByPhone(m_phone);
	}

}
