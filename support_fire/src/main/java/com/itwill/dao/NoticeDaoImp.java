package com.itwill.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.dto.Notice;
import com.itwill.mapper.NoticeMapper;

@Repository
public class NoticeDaoImp implements NoticeDao{
	
	@Autowired
	private NoticeMapper noticeMapper;
	
	@Override
	public int insert(Notice notice) {
		return noticeMapper.insert(notice);
	}

	@Override
	public int update(Notice notice) {
		return noticeMapper.update(notice);
	}

	@Override
	public int delete(int n_no) {
		return noticeMapper.delete(n_no);
	}

	@Override
	public Notice selectByNo(int n_no) {
		return noticeMapper.selectByNo(n_no);
	}

	@Override
	public List<Notice> selectAll() {
		return noticeMapper.selectAll();
	}

	
	
}
