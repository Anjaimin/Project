package com.medi.myapp.Controller;


import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;

import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.medi.myapp.MemberDao.MemberRepository;
import com.medi.myapp.MemberService.MemberService;
import com.medi.myapp.vo.BoardVO;
import com.medi.myapp.vo.MemberVO;

@Controller
public class MemberController {
    private static final Logger logger=
            LoggerFactory.getLogger(MemberRepository.class);
	
	@Autowired(required=false)
	MemberService memberService;
	
	@RequestMapping(value="signup", method = RequestMethod.GET)
	public String signup() {
		logger.info("회원가입 페이지 진입");
		return "signup";
	}
	
	@RequestMapping(value="insertMember", method=RequestMethod.POST)
	public String insertMember(MemberVO membervo){
		System.out.println("id값 확인" + membervo.getUserid());
		memberService.insertMember(membervo);
		/* session.invalidate(); */
		//return값 체크해보자
		
		logger.info("join service 성공");
		return "redirect:/";
	}
	
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(Locale locale, Model model) {
		System.out.println("관리자 페이지 진입");
		return "admin";
	}

	
	
	@RequestMapping(value = "/adminmember", method = RequestMethod.GET)
	public String adminmember(Locale locale, Model model) {
		System.out.println("관리자 페이지 진입");

		List<MemberVO> memberVoList = memberService.selectMemberList();
		
		model.addAttribute("memberList", memberVoList);
		return "adminmember";
	}
		
	
	
	
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	
	
	@RequestMapping(value="loginMember", method=RequestMethod.POST )
	@ResponseBody
	public MemberVO loginMember(@RequestBody MemberVO paramMembervo, HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		System.out.println(paramMembervo.getUserid());
		System.out.println(paramMembervo.getPassword());
		MemberVO membervo = memberService.loginMember(paramMembervo);
		if(membervo != null) {
			//비밀번호 일치
			session.setAttribute("userid", membervo.getUserid());
			session.setAttribute("name", membervo.getName());
		}else {
			//비밀번호 불일치
		}
		
		return membervo;
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/login";
	}
	

	@RequestMapping(value="idsearch", method=RequestMethod.GET)
	public String idsearch() {
		return "idsearch";
	}
	
	
	
	
	
	@RequestMapping(value="pwsearch", method=RequestMethod.GET)
	public String pwsearch() {
		return "pwsearch";
	}
	
	
	
	public String test(List<String> idList) {
		return "pwsearch";
	}
	
	public String test2(String id) {
		return "pwsearch";
	}
	
//	@RequestMapping(value="/member/logout", method=RequestMethod.GET)
//	public String logout(HttpSession session, HttpServletRequest request) {
//		session.invalidate();
//		return "redirect:/";
//	}
//	
	
//
//	@RequestMapping(value="/member/update", method=RequestMethod.GET)
//	public String updateMember(HttpSession session, Model model) {
//		String userid = (String)session.getAttribute("userid");
//		if(userid !=null && !userid.equals("")) {
//			MemberVO membervo = memberService.SelectMember(userid);
//			model.addAttribute("membervo", membervo);
//			model.addAttribute("message", "UPDATE_USER_INFO");
//			return "member/update";
//		}else {
//			//userid가 세션에 없을때(로그인 하지 않았을 때)
//			model.addAttribute("message", "NOT_LOGIN_USER");
//			return "member/login";
//		}
//		
//	}
//	
//	
//	@RequestMapping(value="/member/update", method=RequestMethod.POST)
//	public String updateMember(MemberVO membervo, HttpSession session, Model model) {
//		try {
//			memberService.updateMember(membervo);
//			model.addAttribute("message", "UPDATE_MEMBER_INFO");
//			model.addAttribute("membervo", membervo);
//			session.setAttribute("license", membervo.getLicense());
//			return "member/login";
//		}catch(Exception e) {
//			model.addAttribute("message", e.getMessage());
//			e.printStackTrace();
//			return "member/error";
//		}
//	}
//	
//	@RequestMapping(value="/member/delete", method=RequestMethod.GET)
//	public String deleteMember(HttpSession session, Model model) {
//		String userid = (String) session.getAttribute("userid");
//		if(userid !=null && !userid.equals("")) {
//			MemberVO membervo = memberService.SelectMember(userid);
//			model.addAttribute("membervo", membervo);
//			model.addAttribute("message", "MEMBER_PW_RE");
//			return "member/delete";
//		}else {
//			//userid가 세션에 없을 때 (로그인 하지 않았을 때)
//			model.addAttribute("message", "NOT_LOGIN_USER");
//			return "member/login";
//		}
//	}
//	
//	
//	@RequestMapping(value="/member/delete", method=RequestMethod.POST)
//	public String deleteMember(String password, HttpSession session, Model model) {
//		try {
//			MemberVO membervo = new MemberVO();
//			membervo.setUserid((String)session.getAttribute("userid"));
//			String dbpw = memberService.getPassword(membervo.getUserid());
//			if(password != null && password.equals(dbpw)) {
//				membervo.setPassword(password);
//				memberService.deleteMember(membervo);
//				session.invalidate(); // 삭제되었으면 로그아웃 처리
//				return "member/login";
//			}else {
//				model.addAttribute("message", "WRONG_PASSWORD");
//				return "member/delete";
//			}
//		}catch(Exception e) {
//			model.addAttribute("message", "DELETE_FAIL");
//			e.printStackTrace();
//			return "member/delete";
//			
//			
//}
//}
//			*/
//			
			
	
}
