package com.itwill.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.dto.Qna;
import com.itwill.service.QnaService;


@Controller
public class QnaController {
	@Autowired
	private QnaService qnaService;
	
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
    
}

