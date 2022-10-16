package com.itwill.common;

import java.util.List;

import org.springframework.stereotype.Component;

import com.itwill.common.NoticePageMaker;
import com.itwill.dto.Qna;


@Component
public class QnaPageMakerDto {
	public List<Qna> itemList;
	public NoticePageMaker pageMaker;
	public int totRecordCount;
}