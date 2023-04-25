package com.project522.controller;


import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.project522.domain.UserVO;
import org.springframework.validation.BindingResult;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j

@RequestMapping("/user_login/*")

public class UserController {
	

	@GetMapping("/login")
	public String login() {
		return "user_login/login";
	}
	
	@GetMapping("/join")
	public String join(@ModelAttribute("joinUserVO") UserVO joinUserVO) {
		return "user_login/join";
	}
	
	@PostMapping("/join_pro")
	public String join_pro(@Valid @ModelAttribute("joinUserVO") UserVO joinUserVO, BindingResult result) {	  
	   
	    if (result.hasErrors()) {
	        // 유효성 검사 실패 시 처리할 로직
	        return "user_login/join"; // 유효성 검사 실패 시 다시 회원가입 페이지로 이동
	    }
	    // 유효성 검사 성공 시 처리할 로직
	    return "user_login/join_success";
	}
	
	@GetMapping("/modify")
	public String modify() {
		return "user_login/modify";
	}
	
	@GetMapping("/logout")
	public String logout() {
		return "user_login/logout";
	}
	

	
}
