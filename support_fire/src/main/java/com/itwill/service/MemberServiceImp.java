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
	
	/*
	 * 로그인
	 */
	@Override
	public int login(String m_id, String password) throws Exception {
		int result=-1;
		//1.아이디 존재여부
		Member member = memberDao.selectMemberById(m_id);
		if(member==null) {
			//아이디존재안함
			result=0;
		}else {
			//아이디존재함
			if(member.getM_password().equals(password)) {
				//패쓰워드일치(로그인성공)
				result=2;
			}else {
				//패쓰워드불일치
				result=1;
			}
		}
		
		return result;
	}

	@Override
	public String selectMemberByPhone(String m_phone) throws Exception{
		return memberDao.selectMemberByPhone(m_phone);
	}
	
	
}
