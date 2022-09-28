package com.itwill.common;

import java.util.List;

import org.springframework.stereotype.Component;

import com.itwill.common.PageMaker;
import com.itwill.dto.Qna;


@Component
public class QnaPageMakerDto {
	public List<Qna> itemList;
	public PageMaker pageMaker;
	public int totRecordCount;
}