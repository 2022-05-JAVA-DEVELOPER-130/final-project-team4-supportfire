package com.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.itwill.common.NoticePageMaker;
import com.itwill.common.NoticePageMakerDto;
import com.itwill.dao.NoticeDao;
import com.itwill.dto.Notice;
@Service
public class NoticeServiceImp implements NoticeService{
	@Autowired
	private NoticeDao noticeDao;
	

	@Override
	public int insert(Notice notice) throws Exception {
		// TODO Auto-generated method stub
		return noticeDao.insert(notice);
	}

	@Override
	public int update(Notice notice) throws Exception{
		// TODO Auto-generated method stub
		return noticeDao.update(notice);
	}

	@Override
	public int delete(int n_no) throws Exception{
		// TODO Auto-generated method stub
		return noticeDao.delete(n_no);
	}
	public Notice selectByNo(int n_no) throws Exception{
		// TODO Auto-generated method stub
		return noticeDao.selectByNo(n_no);
	}


	@Override
	public int updateCount(int n_no) throws Exception{
		// TODO Auto-generated method stub
		return noticeDao.updateCount(n_no);
	}

	@Override
	public int selectCount() throws Exception{
		// TODO Auto-generated method stub
		return noticeDao.selectCount();
	}

	@Override
	public NoticePageMakerDto<Notice> selectAll(int currentPage) throws Exception {
		int totNoticeCount = noticeDao.selectCount();
		NoticePageMaker pageMaker = new NoticePageMaker(totNoticeCount, currentPage, 5, 5);
		List<Notice> noticeList = noticeDao.selectAll(pageMaker.getPageBegin(), pageMaker.getPageEnd());
		NoticePageMakerDto<Notice> pageMakerNoticeList = new NoticePageMakerDto<Notice>(noticeList, pageMaker, totNoticeCount);
		
		//게시글 제목 수정
		for(Notice notice:pageMakerNoticeList.getItemList()) {
			//getTitleString(notice);
		}
		return pageMakerNoticeList;
	}
	public Notice getTitleString(Notice notice) {
		StringBuilder title = new StringBuilder(128);
		String t = notice.getN_title();
		if (t.length() > 15) {
			// t = t.substring(0,15);
			// t = t+"...";
			t = String.format("%s...", t.substring(0, 15));
		}
		

		title.append(t.replace(" ", "&nbsp;"));
		notice.setN_title(title.toString());
		
		return notice;
	}


	
	
	
}
