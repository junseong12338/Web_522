package com.project522.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project522.domain.UserVO;
import com.project522.mapper.LoginMapper;

import lombok.extern.log4j.Log4j;
@Controller
@Log4j
@RequestMapping("/user_login/*")
public class UserCheckController {
	@Autowired
	private LoginMapper mapper;
	
	@GetMapping(value="/checkUserIdExist/{user_id}")
	public ResponseEntity checkUserIdExist(@PathVariable String user_id) {
	
	 List<UserVO> chk = mapper.checkUserIdExist(user_id);
	 

	 if(chk.isEmpty()){
		return ResponseEntity.badRequest()
			    .contentType(MediaType.APPLICATION_JSON_UTF8)
			    .body("사용할 수 있는 아이디입니다.");
	}else {
		return ResponseEntity.ok()
		        .contentType(MediaType.APPLICATION_JSON_UTF8)
		        .body("이미 존재 하는 아이디입니다.");
	    }
	}
}


