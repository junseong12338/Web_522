package com.project522.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project522.domain.CommunityVO;
import com.project522.mapper.CommunityMapper;
import com.project522.service.CommunityService;
import com.project522.service.ReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/community")
@AllArgsConstructor
public class CommunityController {
	@Autowired
	private CommunityMapper mapper;
	private CommunityService service;

	@GetMapping("/list")
	public void getList(Model model) {
		List<CommunityVO> dtoList = mapper.getList();
		model.addAttribute("list", dtoList);
	}
	
	@PostMapping({"/modify" })
	public String modify(CommunityVO community, RedirectAttributes rttr) {
		service.modify(community);
		rttr.addFlashAttribute("result", community.getCommunity_num());
		return "redirect:/community/list";
	}
	
	@GetMapping({ "/get", "/modify" })
	public void get(@RequestParam("community_num") int community_num, Model model) {
		model.addAttribute("community", service.get(community_num));
	}

	@RequestMapping("home")
	public String main() {
		return "home";
	}
	
	@GetMapping("/register")
	public void register() {
		
	}
	
	@PostMapping("/register")
	public String register(CommunityVO community, RedirectAttributes rttr) {
		service.register(community);
		rttr.addFlashAttribute("result", community.getCommunity_num());
		return "redirect:/community/list";
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("community_num") int community_num, RedirectAttributes rttr) {
		service.remove(community_num);
		return "redirect:/community/list";
	}
	
	
}
