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
	 
	@GetMapping("login_success")
	public String login(@RequestParam("user_id") String user_id, @RequestParam("user_pw") String user_pw, Model model) throws Exception {
		
		UserVO uservo = new UserVO();
		uservo.setUser_id(user_id);
		uservo.setUser_pw(user_pw);
		
		List<UserVO> List = mapper.getUserInfo(uservo);
		
		if (List != null && List.size() > 0 && user_id.equals(List.get(0).getUser_id()) && user_pw.equals(List.get(0).getUser_pw())) {
			
	        // 로그인 정보를 세션에 저장
	        //session.setAttribute("user_id", user_id);
	        //session.setAttribute("user_pw", user_pw);
	        // 로그인 버튼 대신 로그아웃 버튼이 보이도록 모델에 추가
	        //model.addAttribute("login_button", "logout");
	        //model.addAttribute("login_button_url", "/logout");
	        // 마이페이지 버튼이 보이도록 모델에 추가
	        //model.addAttribute("mypage_button", "마이페이지");
	        //model.addAttribute("mypage_button_url", "/mypage");
	        //return "redirect:/main";

			
			
			
			
			model.addAttribute("List", List);
			return "user_login/login_success";
			//list 문자열, mapper에서 가져온 리스트
			
		} else {
			model.addAttribute("msg", "로그인을 실패하였습니다. 다시 입력해주세요.");
			return "user_login/login";
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
	
	// 로그아웃, alert 뜨면서 로그인 전 화면으로 이동
	/*
	 * @GetMapping("/logout") public String logout() {
	 * 
	 * UserVO.setUserLogin(false);
	 * 
	 * return "user_login/logout"; }
	 */
}
