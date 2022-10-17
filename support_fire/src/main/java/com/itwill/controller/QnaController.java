package com.itwill.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.common.NoticePageMakerDto;
import com.itwill.dto.Notice;
import com.itwill.dto.Qna;
import com.itwill.dto.ReQna;
import com.itwill.service.QnaService;
import com.itwill.service.ReQnaService;


@Controller
public class QnaController {
	@Autowired
	private QnaService qnaService;
	private ReQnaService reQnaService;
	
	@RequestMapping(value="board", method=RequestMethod.GET)
	public String board() {
		return "board";
	}
	
	@RequestMapping(value="/", method=RequestMethod.GET)
    public String root() {
        return "index";
    }
    @RequestMapping(value="boardAction", method=RequestMethod.POST)
    @ResponseBody
    public int boardAction(Qna qna) {
    	int result = qnaService.qna_insert(qna);
    	
        return result;
    }
    
    @RequestMapping(value="boardUpdate", method=RequestMethod.POST)
    @ResponseBody
    public int boardUpdate(Qna qna) {
    	int result = qnaService.qna_update(qna);
    	
    	return result;
    }
    
    @RequestMapping(value="boardDelete", method=RequestMethod.POST)
    @ResponseBody
    public int boardDelete(int q_no) {
    	int result = qnaService.qna_delete(q_no);
    	
    	return result;
    }
	
    @RequestMapping(value="boardList", method=RequestMethod.GET)
    @ResponseBody
    public List<Qna> boardList(){
    	System.out.println(qnaService.selectAll());
        return qnaService.selectAll();
    }
    
    @RequestMapping(value="boardReInsert", method=RequestMethod.POST)
    @ResponseBody
    public Map reInsert(@ModelAttribute ReQna reQna, @RequestParam int q_no) {
    	int code=0;
		String url="";
		String msg="";
		
    	int pk = reQnaService.insert(reQna);
    	reQna.setRq_no(pk);
    	Qna qna = new Qna(q_no, null, null, null, null, reQna);
    	int rowCount = qnaService.qna_reply_update(qna);
    	
    	
    	if(rowCount == 1) {
		code=rowCount;
		msg="성공";
	    url="board";
    	} else {
    			code=rowCount;
    			msg="실패";
    			url="board";
    	}
	    
	    Map resultMap= new HashMap();
	    resultMap.put("code",code);
	    resultMap.put("url",url);
	    resultMap.put("msg",msg);
	    resultMap.put("data",reQna);
	    
	    return resultMap;
    }
    
 
}

