package com.itwill.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
	@Autowired
	private ReQnaService reQnaService;
	
	
	@RequestMapping(value="/", method=RequestMethod.GET)
    public String root() {
        return "index";
    }
    @RequestMapping(value="qna_write_action", method=RequestMethod.POST)
    @ResponseBody
    public int boardAction(Qna qna) {
    	int result = qnaService.qna_insert(qna);
    	
        return result;
    }
    
    @RequestMapping(value="reqna_write_action", method=RequestMethod.POST)
    @ResponseBody
    public int reqna_write_action(String rq_content, int q_no) {
    	ReQna reQna = new ReQna(0, rq_content, "");
    	int result = reQnaService.insert(reQna);
    	reQna.setRq_no(result);
    	Qna qna = new Qna(q_no, null, null, null, null, reQna);
    	qnaService.qna_reply_update(qna);
    	
    	return result;
    }
    
    @RequestMapping(value="boardUpdate", method=RequestMethod.POST)
    @ResponseBody
    public int boardUpdate(Qna qna) {
    	int result = qnaService.qna_update(qna);
    	
    	return result;
    }
    
    @RequestMapping(value="qna_delete_action", method=RequestMethod.POST)
    @ResponseBody
    public int boardDelete(int q_no) {
    	int result = qnaService.qna_delete(q_no);
    	
    	return result;
    }
	
    @RequestMapping(value="boardList", method=RequestMethod.GET)
    @ResponseBody
    public List<Qna> boardList(){
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
    
    @RequestMapping("qna_list_rest")
    @ResponseBody
    public Map<String, Object> qna_list(@RequestParam(required = false, defaultValue = "1") Integer pageno, HttpSession session) {
    	Map<String, Object> resultMap= new HashMap();
    	int code=1;
 		String url="";
 		String msg="";
 		NoticePageMakerDto<Qna> qnaList = null;
 		qnaList = qnaService.selectAll_p(pageno);
 		String sUserId = (String)session.getAttribute("sUserId");
 		
 		
 		resultMap.put("code",code);
	    resultMap.put("url",url);
	    resultMap.put("msg",msg);
	    resultMap.put("data",qnaList);
	    resultMap.put("sUserId",sUserId);
	    
	    return resultMap;
    }
    
    @RequestMapping("qna_write_form")
    @ResponseBody
    public Map qna_write_form(HttpSession session) {
    	Map resultMap= new HashMap();
    	int code=1;
 		String url="";
 		String msg="";
 		String sUserId = (String)session.getAttribute("sUserId");
 		resultMap.put("code",code);
	    resultMap.put("url",url);
	    resultMap.put("msg",msg);
	    resultMap.put("data",sUserId);
	    
	    return resultMap;
    }
 
}

