package com.itwill.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.dto.Notice;
import com.itwill.mapper.NoticeMapper;

@Repository
public class NoticeDaoImp implements NoticeDao{
	
	@Autowired
	private NoticeMapper noticeMapper;
	
	public NoticeMapper getNoticeMapper() {
		return noticeMapper;
	}
	public void setNoticeMappper(NoticeMapper noticeMapper) {
		System.out.println(">>> noticeDaoImpl():setNoticeMappper()호출");
		this.noticeMapper = noticeMapper;
	}
	
	@Override
	public List<Notice> selectAll(int pageStart, int pageEnd) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Integer>map = new HashMap<>();
		map.put("pageStart", pageStart);
		map.put("pageEnd", pageEnd);
		
		return noticeMapper.selectAll(pageStart, pageEnd);
	}

	@Override
	public int insert(Notice notice) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.insert(notice);
	}

	@Override
	public int selectCount() throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.SelectCount();
	}

	@Override
	public Notice selectByNo(int notice_no) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.selectByNo(notice_no);
	}

	@Override
	public int delete(int notice_no) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.delete(notice_no);
	}

	@Override
	public int update(Notice notice) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.update(notice);
	}

	@Override
	public int updateCount(int n_no) throws Exception {
		// TODO Auto-generated method stub
		return noticeMapper.updateCount(n_no);
	}

}
