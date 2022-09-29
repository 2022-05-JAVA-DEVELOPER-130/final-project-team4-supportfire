package com.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.dao.NoticeDao;
import com.itwill.dto.Notice;
@Service
public class NoticeServiceImp implements NoticeService{
	@Autowired
	private NoticeDao noticeDao;
	
	@Override
	public int insert(Notice notice) {
		return noticeDao.insert(notice);
	}

	@Override
	public int update(Notice notice) {
		return noticeDao.update(notice);
	}

	@Override
	public int delete(int n_no) {
		return noticeDao.delete(n_no);
	}

	@Override
	public Notice selectByNo(int n_no) {
		return noticeDao.selectByNo(n_no);
	}

	@Override
	public List<Notice> selectAll() {
		return noticeDao.selectAll();
	}

	
	
	
}
