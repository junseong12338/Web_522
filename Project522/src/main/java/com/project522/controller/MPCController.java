package com.project522.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project522.domain.CommunityVO;
import com.project522.domain.MPCVO;
import com.project522.domain.TagVO;
import com.project522.mapper.MPCMapper;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
/* @RequestMapping("/MyPage/*") */
@RequestMapping("/MyPage")
public class MPCController {
	@Autowired
	private MPCMapper mapper;

	@RequestMapping("/MyPage")
	public void MyPage() {
		log.info("MyPage");
	}

	@RequestMapping("/MyPageCommunity")
	public void MyPageCommunity() {
		log.info("MyPageCommunity");
	}

	@GetMapping("/Test")
	public String MPCTest(Model model) {
		List<MPCVO> MPCList = mapper.getMPC();
		model.addAttribute("mpcList", MPCList);
		return "MyPage/Test";
	}
	
	@GetMapping("/MPC")
	public String MPC(Model model) {
		List<MPCVO> MPCList = mapper.getMPC();
		model.addAttribute("mpcList", MPCList);
		return "MyPage/MPC";
	}
}
