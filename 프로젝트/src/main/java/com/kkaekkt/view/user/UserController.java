package com.kkaekkt.view.user;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
import com.kkaekkt.biz.user.BusinessVO;
import com.kkaekkt.biz.user.EquipmentVO;
import com.kkaekkt.biz.user.PersonVO;
import com.kkaekkt.biz.user.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	
//	@RequestMapping(value="/login.do", method=RequestMethod.POST) //인터페이스로 VO를 합칠지 고민 중..
//	public String Join(PersonVO vo) {
//		userService.insertUser(vo);		
//		return "Join.html";
//	}
//	@RequestMapping(value="/logout.do", method=RequestMethod.POST)
//	public String Join(PersonVO vo) {
//		userService.insertUser(vo);		
//		return "Join.html";
//	}
	@RequestMapping(value="/joinPs.do", method=RequestMethod.POST)
	public String Join(PersonVO vo) {
		userService.insertUser(vo);
		return "index.jsp";
	}
	@RequestMapping(value="/joinBs.do", method=RequestMethod.POST)
	public String Join(BusinessVO vo) {
		System.out.println("메서드 진입");
		userService.insertUser(vo);
		return "index.jsp";
	}
	@RequestMapping(value="/updatePs.do", method=RequestMethod.POST)
	public String Update(PersonVO vo) {
		userService.updateUser(vo);
		return "index.jsp";
	}
	
	// 로그인
		@RequestMapping(value = "/login.do", method = RequestMethod.POST)
		public String Login(PersonVO vo, HttpSession session) {
			System.out.println("로그인처리");
			vo = userService.getUser(vo);			
			
			if(vo != null) {
				session.setAttribute("person", vo);
				return "index.jsp";
			}else {
				System.out.println("정보없음");
				return "login.jsp";
			}

		}
}
