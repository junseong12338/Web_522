package com.project522.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project522.domain.MPCVO;
import com.project522.mapper.CommunityMapper;
import com.project522.mapper.MPCMapper;
import com.project522.service.CommunityService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
/* @RequestMapping("/MyPage/*") */
@RequestMapping("/MyPage")
@AllArgsConstructor
public class MPCController {
	@Autowired
	private MPCMapper mapper;
	private CommunityService service;

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
	
	@PostMapping("/remove")
	public String remove(@RequestParam("community_num") int community_num, RedirectAttributes rttr) {
	service.remove(community_num);
	return "redirect:/MyPage/MPC";
	}
	
}