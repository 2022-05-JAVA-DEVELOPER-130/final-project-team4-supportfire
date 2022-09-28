package com.itwill.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.dto.Qna;
import com.itwill.service.QnaService;


@Controller
public class QnaController {
	@Autowired
	private QnaService qnaService;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
    public String root() {
        return "index";
    }
    @RequestMapping(value="/index", method=RequestMethod.GET)
    public String index() {
        return "index";
    }
    @RequestMapping(value="board", method=RequestMethod.GET)
    public String board() {
        return "board";
    }
	
    @RequestMapping(value="boardList", method=RequestMethod.GET)
    @ResponseBody
    public List<Qna> boardList(){
    	System.out.println(qnaService.selectAll());
        return qnaService.selectAll();
    }
    
}

