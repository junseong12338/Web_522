package com.project522.controller;


import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project522.domain.ReviewVO;
import com.project522.domain.UserInfoVO;
import com.project522.domain.UserVO;
import com.project522.example.IdExistNotCheckMatchedException;
import com.project522.example.PasswordNotMatchedException;
import com.project522.mapper.LoginMapper;

import org.springframework.validation.BindingResult;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j

@RequestMapping("/user_login/*")

public class UserController {
	
	@Autowired 
	private LoginMapper mapper;
	
	
	@GetMapping("/login")
	public String login(@ModelAttribute("tempLoginUserVO") UserInfoVO tempLoginUserVO) {
		return "user_login/login";
	}
	

	@PostMapping("/login_pro")
	public String login_pro(@Valid @ModelAttribute("tempLoginUserVO") UserInfoVO tempLoginUserVO, BindingResult result) {
		
		if(result.hasErrors()) {
			return "user/login";
		}
		return "user/login";
		
	}
	
	
	@GetMapping("/join")
	public String join(@ModelAttribute("joinUserVO") UserVO joinUserVO) {
		return "user_login/join";
	}
	
	
	@PostMapping("/join_pro")
	public String join_pro(@Valid @ModelAttribute("joinUserVO") UserVO joinUserVO,BindingResult result ,Model model) {	  
		
		
		try {
		    joinUserVO.validateEquals();
		} catch (PasswordNotMatchedException ex) {// 비밀번호 일치 판단
		    result.rejectValue("user_pw2", "error.joinUserVO", ex.getMessage()); // 유효성 검사 에러 추가
		    if (result.hasErrors()) {
		        // 유효성 검사 실패 시 처리할 로직
		        return "user_login/join"; // 유효성 검사 실패 시 다시 회원가입 페이지로 이동
		    }
		}
		
		try {
		    joinUserVO.validateCheck();
		} catch (IdExistNotCheckMatchedException ex) { // 중복확인 버튼 클릭 유무 판단
		    result.rejectValue("user_id", "error.joinUserVO", ex.getMessage()); // 유효성 검사 에러 추가
		    if (result.hasErrors()) {
		        // 유효성 검사 실패 시 처리할 로직
		        return "user_login/join"; // 유효성 검사 실패 시 다시 회원가입 페이지로 이동
		    }
		}
	    if (result.hasErrors()) {
	        // 유효성 검사 실패 시 처리할 로직
	        return "user_login/join"; // 유효성 검사 실패 시 다시 회원가입 페이지로 이동
	    }
	    // 유효성 검사 성공 시 처리할 로직
	    
	    UserInfoVO userinfo = new UserInfoVO();
	    
	    userinfo.setUser_name(joinUserVO.getUser_name());
	    userinfo.setUser_id(joinUserVO.getUser_id());
	    userinfo.setUser_pw(joinUserVO.getUser_pw());
	    userinfo.setUser_nickname("테스트");
	    userinfo.setUser_address("이태원");
	    
	    System.out.println(userinfo);
	    
	    mapper.insertUser(userinfo);
	   
	    model.addAttribute(userinfo);
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


