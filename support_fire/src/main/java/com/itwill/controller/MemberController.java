package com.itwill.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.dto.Address;
import com.itwill.dto.Member;
import com.itwill.dto.ProductDetail;
import com.itwill.service.AddressService;
import com.itwill.service.MemberService;
import com.itwill.service.ProductDetailService;

@RestController
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private ProductDetailService productDetailService;
	@Autowired
	private AddressService addressService;
	
	@LoginCheck
	@PostMapping(value = "session_check")
	public Map user_session_check_json(HttpSession session) throws Exception{
		Map resultMap=new HashMap();
		int code=1;
		String url="user_main";
		String msg="세션존재함";
		String sUserId=(String)session.getAttribute("sUserId");
		
		resultMap.put("code", code);
		resultMap.put("url", url);
		resultMap.put("msg", msg);
		resultMap.put("data",sUserId);
		return resultMap;
		
	}
	
	@RequestMapping("mypage_form")
	public Map mypage_form(HttpSession session) throws Exception{
		Map resultMap = new HashMap();
		int code=0;
		String url="";
		String msg="";
		String sUserId = (String)session.getAttribute("sUserId");
		List<Member> result = new ArrayList<Member>();
		List<String> b_name1 = new ArrayList<String>();
		List<String> b_name2 = new ArrayList<String>();
		Member member = memberService.selectById(sUserId);
		//구매기록
		List<ProductDetail> productDetail = productDetailService.selectByIdAndBtNo(sUserId, 1);
		//판매기록
		List<ProductDetail> product_s = productDetailService.selectByIdAndBtNo(sUserId, 2);
		
		for (ProductDetail product : productDetail) {
			if(product.getB_no() == 1) {
				b_name1.add("입찰중");
			}else if(product.getB_no() == 2) {
				b_name1.add("거래중");
			}else if(product.getB_no() == 3) {
				b_name1.add("완료");
			}
		}
		for (ProductDetail product : product_s) {
			if(product.getB_no() == 1) {
				b_name2.add("입찰중");
			}else if(product.getB_no() == 2) {
				b_name2.add("거래중");
			}else if(product.getB_no() == 3) {
				b_name2.add("완료");
			}
		}
		
		
		result.add(member);
		
		resultMap.put("code",code);
	    resultMap.put("url",url);
	    resultMap.put("msg",msg);
	    resultMap.put("data",result);
	    resultMap.put("p",productDetail);
	    resultMap.put("s",product_s);
	    resultMap.put("b_p",b_name1);
	    resultMap.put("b_s",b_name2);
	    
	    return resultMap;
	}
	
	
	@GetMapping("member_list")
	public String member_list(Model model) throws Exception{
		List<Member> members = memberService.selectAllmembers();
		model.addAttribute("members", members);
		return "member_list";
	}
	
	@GetMapping("member_view/{m_id}")
	public String member_view(@PathVariable("m_id") String m_id,
							  Model model) throws Exception{
		Member member = memberService.selectById(m_id);
		model.addAttribute("member", member);
		return "member_view";
	}
	
	@RequestMapping("member_write_form")
	public String member_write_form() {
		return "member_write_form";
	}
	
	@PostMapping("member_write_action")
	public Map member_write_action(@ModelAttribute Member member, String a_zipcode, String a_detail) throws Exception{
		Map resultMap = new HashMap();
		int code=0;
		String url="";
		String msg="";
		int data=0;
		try {
			Address address = new Address(0, member.getM_name(), member.getM_phone(), a_zipcode, member.getM_address(), a_detail, member.getM_id());
		int insertRowCount = memberService.insertMember(member);
		addressService.insert(address);
		if(insertRowCount == 1) {
			code=1;
			url="login_form";
			msg="";
		}else {
			msg="존재하는 아이디입니다.";
		}
		}catch (Exception e) {
			e.printStackTrace();
			code=2;
			msg="존재하는 아이디입니다.";
		}
		resultMap.put("code",code);
	    resultMap.put("url",url);
	    resultMap.put("msg",msg);
	    resultMap.put("data",data);
	    
	    return resultMap;
	}
	
	@GetMapping("member_delete_action")
	public String member_delete_action(@RequestParam String m_id) throws Exception{
		int deleteRowCount = memberService.deleteMember(m_id);
		return "member_delete_action";
	}
	
	@RequestMapping("modify_form")
	public Map member_modify_form(HttpSession session) throws Exception{
		Map resultMap = new HashMap();
		int code=0;
		String url="";
		String msg="";
		List<Member> resultList = new ArrayList<Member>();
		String m_id = (String)session.getAttribute("sUserId");
		Member member = memberService.selectById(m_id);
		resultList.add(member);
		
		resultMap.put("code",code);
	    resultMap.put("url",url);
	    resultMap.put("msg",msg);
	    resultMap.put("data",member);
	    
	    return resultMap;
	}
	
	//정보수정 액션
	@RequestMapping("modify_action")
	public Map member_modify_action(@ModelAttribute Member member) throws Exception{
		Map resultMap = new HashMap();
		int code=0;
		String url="";
		String msg="";
		Member data = null;
		int updateMemberRowCount = memberService.updateMember(member);
		if(updateMemberRowCount == 1) {
			code=1;
			data = member;
		}else {
			msg="정보수정이 실패했습니다.";
		}
		
		resultMap.put("code",code);
	    resultMap.put("url",url);
	    resultMap.put("msg",msg);
	    resultMap.put("data",data);
	    
	    return resultMap;
	}
	
	
	
	//로그인 액션
	@RequestMapping(value = "member_login_action", method = RequestMethod.POST)
	public Map login_action(@ModelAttribute Member member, HttpServletRequest request) throws Exception{
		Map resultMap = new HashMap();
		int code=0;
		String url="";
		String msg="";
		int data=0;
		int rowCount = memberService.login(member.getM_id(), member.getM_password());
		if(rowCount == 0) {
			msg="아이디가 존재하지 않습니다.";
			url = "member_login_form";
			data=rowCount;
		}else if(rowCount == 1) {
			msg="비밀번호가 일치하지 않습니다.";
			url = "member_login_form";
			data=rowCount;
		}else {
			request.getSession().setAttribute("sUserId", member.getM_id());
			url = "main";
			data=2;
		}
		
		resultMap.put("code",code);
	    resultMap.put("url",url);
	    resultMap.put("msg",msg);
	    resultMap.put("data",data);
	    
	    return resultMap;
	}
	
	
	//아이디찾기 액션
	@RequestMapping(value = "id_search_action")
	public Map id_search(String m_phone) throws Exception{
		Map resultMap = new HashMap();
		int code=1;
		String url="";
		String msg="";
		String data = memberService.selectMemberByPhone(m_phone);
		if(data == null) {
			code = 0;
			msg = "가입된 아이디가 없습니다";
			data = "아이디찾기 실패";
		}
		
		resultMap.put("code",code);
	    resultMap.put("url",url);
	    resultMap.put("msg",msg);
	    resultMap.put("data",data);
		return resultMap;
	}
	
	//비밀번호찾기 액션
	@RequestMapping("pass_search_action")
	public Map pass_search(String m_phone, String m_id) throws Exception{
		Map resultMap = new HashMap();
		int code=0;
		String url="";
		String msg="";
		String data = memberService.selectMemberByPhone(m_phone);
		Member member = memberService.selectById(m_id);
		if(data == null) {
			code = 0;
			msg = "가입된 아이디가 없습니다.";
			data = "비밀번호 찾기 실패";
			
			resultMap.put("code",code);
			resultMap.put("url",url);
			resultMap.put("msg",msg);
			resultMap.put("data",data);
			return resultMap;
		}
		
		if(member == null) {
			code = 0;
			msg = "일치하는 아이디가 없습니다";
			data = "비밀번호 찾기 실패";
			
			resultMap.put("code",code);
			resultMap.put("url",url);
			resultMap.put("msg",msg);
			resultMap.put("data",data);
			return resultMap;
		}
		
		if(data != null && member != null){
			
			if(member.getM_phone().equals(m_phone)) {
				data = member.getM_password();
				code = 1;
			}
		}
		
		resultMap.put("code",code);
		resultMap.put("url",url);
		resultMap.put("msg",msg);
		resultMap.put("data",data);
		return resultMap;
	}
	
	@RequestMapping("address_modify")
	public Map address_modify(HttpServletRequest request) {
		Map resultMap = new HashMap();
		int code=0;
		String url="";
		String msg="";
		Member data = null;
		//int updateByMember= memberService.updateMember()
		resultMap.put("code",code);
	    resultMap.put("url",url);
	    resultMap.put("msg",msg);
	    resultMap.put("data",data);
	    
    return resultMap;
	}

	@RequestMapping("pd_delete")
	public Map pd_delete(int pd_no) {
		Map resultMap = new HashMap();
		int code=0;
		String url="";
		String msg="";
		Member data = null;
		
		ProductDetail productDetail = productDetailService.selectByNo(pd_no);
		if(productDetail.getB_no() == 1) {
			code=1;
			productDetailService.delete(pd_no);
			msg="삭제되었습니다.";
		}else if(productDetail.getB_no() == 2){
			code=2;
			msg="거래중인 상품은 취소할 수 없습니다.";
		}else if(productDetail.getB_no() == 3){
			code=3;
			msg="완료된 상품은 취소할 수 없습니다.";
		}
		
		
		resultMap.put("code",code);
	    resultMap.put("url",url);
	    resultMap.put("msg",msg);
	    resultMap.put("data",data);
	    
    return resultMap;
	}
	
	@RequestMapping("List_p_s")
	public Map List_p_s(HttpSession session) throws Exception{
		Map resultMap = new HashMap();
		int code=0;
		String url="";
		String msg="";
		String sUserId = (String)session.getAttribute("sUserId");
		List<String> b_name1 = new ArrayList<String>();
		List<String> b_name2 = new ArrayList<String>();
		Member member = memberService.selectById(sUserId);
		//구매기록
		List<ProductDetail> productDetail = productDetailService.selectByIdAndBtNoAll(sUserId, 1);
		//판매기록
		List<ProductDetail> product_s = productDetailService.selectByIdAndBtNoAll(sUserId, 2);
		
		for (ProductDetail product : productDetail) {
			if(product.getB_no() == 1) {
				b_name1.add("입찰중");
			}else if(product.getB_no() == 2) {
				b_name1.add("거래중");
			}else if(product.getB_no() == 3) {
				b_name1.add("완료");
			}
		}
		for (ProductDetail product : product_s) {
			if(product.getB_no() == 1) {
				b_name2.add("입찰중");
			}else if(product.getB_no() == 2) {
				b_name2.add("거래중");
			}else if(product.getB_no() == 3) {
				b_name2.add("완료");
			}
		}
		
		
		resultMap.put("code",code);
	    resultMap.put("url",url);
	    resultMap.put("msg",msg);
	    resultMap.put("p",productDetail);
	    resultMap.put("s",product_s);
	    resultMap.put("b_p",b_name1);
	    resultMap.put("b_s",b_name2);
	    
    return resultMap;
	}
	
	
	
}
