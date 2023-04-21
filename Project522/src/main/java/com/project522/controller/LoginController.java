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
	
	// 로그인 화면
	@GetMapping("/login")
	public String login(@RequestParam("user_id") String user_id, @RequestParam("user_pw") String user_pw, UserVO uservo, Model model) throws Exception {
		List<UserVO> List = mapper.getUserInfo(user_id, user_pw);
		
		model.addAttribute("List", List);
		
		return "user_login/login";
	}
	
	
	
	
	
	// 회원가입 화면
	@GetMapping("/register")
	public String register() {
		return "user_login/register";
	}



}
