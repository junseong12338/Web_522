package com.project522.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project522.domain.UserVO;
import com.project522.mapper.LoginMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/user_login/*")
@AllArgsConstructor
public class LoginController {
	
	@Autowired
	private LoginMapper mapper;
	// loginmapper를 쓴다고 선언.
	
	// 로그인 화면
	// 로그인 화면을 누르면 인자값으로 받아들임.
	 
	@GetMapping("/login_success")
	public String login(@RequestParam("user_id") String user_id, @RequestParam("user_pw") String user_pw, Model model) throws Exception {
		
		UserVO uservo = new UserVO();
		uservo.setUser_id(user_id);
		uservo.setUser_pw(user_pw);
		
		List<UserVO> List = mapper.getUserInfo(uservo);
		
		if (List != null) {
			
			model.addAttribute("List", List);
			return "user_login/login_success";
			// list 문자열, mapper에서 가져온 리스트
			// 쿠키, 세션
		} else {
			log.info("fail");
			
			return null;
		}
	}
	
	
	
	
	
	// 로그인 화면
	@GetMapping("/login")
	public String login() {
		return "user_login/login";
	}
	
	// 회원가입 화면
	@GetMapping("/register")
	public String register() {
		return "user_login/register";
	}

	// 테스트
	@GetMapping("/test")
	public String test() {
		return "user_login/test";
	}


}