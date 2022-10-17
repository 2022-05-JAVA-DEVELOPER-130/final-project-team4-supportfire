package com.itwill.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class Qna {
	private int q_no;
	private String q_title;
	private String q_content;
	private String q_date;
	private String m_id;
	private ReQna reQna;
	
	
	
}