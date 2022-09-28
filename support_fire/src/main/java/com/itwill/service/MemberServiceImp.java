package com.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.dao.MemberDao;
import com.itwill.dto.Member;

@Service
public class MemberServiceImp implements MemberService{

	@Autowired
	public MemberDao memberDao;
	
	public MemberServiceImp() {}

	public MemberServiceImp(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	/**
	 * 아이디로 회원 조회
	 */
	@Override
	public Member selectById(String m_id) throws Exception {
		return memberDao.selectMemberById(m_id);
	}

	/**
	 * 전체 회원 조회
	 */
	@Override
	public List<Member> selectAllmembers() throws Exception {
		return memberDao.selectAllMembers();
	}

	/**
	 * 회원 가입
	 */
	@Override
	public int insertMember(Member member) throws Exception {
		// 중복회원 검증
		validateDuplicateMember(member);
		return memberDao.insertMember(member);
	}
	/**
	 * 중복 회원 검증
	 */
	public void validateDuplicateMember(Member member) throws Exception {
		Member findMembers = memberDao.selectMemberById(member.getM_id());
		if(findMembers!=null) {
			throw new IllegalStateException("이미 존재하는 회원입니다.");
		}
	}

	/**
	 * 회원 수정
	 */
	@Override
	public int updateMember(Member member) throws Exception {
		return memberDao.updateMember(member);
	}

	/**
	 * 회원 탈퇴
	 */
	@Override
	public int deleteMember(String m_id) throws Exception {
		return memberDao.deleteMember(m_id);
	}
	
	
}
