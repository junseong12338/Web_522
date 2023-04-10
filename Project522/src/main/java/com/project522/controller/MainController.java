package com.project522.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project522.domain.CommunityDTO;
import com.project522.mapper.CommunityMapper;

@Controller
@RequestMapping("/Community")
public class MainController {
	@Autowired
	private CommunityMapper mapper;

	@RequestMapping("test")
	public String test(Model model) {
		List<CommunityDTO> dtoList = new ArrayList<CommunityDTO>();
		dtoList = mapper.viewAll();
		for(int i = 0; i < dtoList.size(); i++) {
			System.out.println(dtoList.get(i));
		}
		return "community/test123";
	}

	@RequestMapping("insertCommunity")
	public String insertCommunity(@RequestParam("num") int num, @RequestParam("category") String category,
			@RequestParam("title") String title, @RequestParam("context") String context) {
		System.out.println("Insert! num = " + num);
		mapper.insertCommunity(new CommunityDTO(num, category, title, context));
		return "community/test";
	}
	
	@RequestMapping("getList")
	public String getList(Model model) {
		List<CommunityDTO> dtoList = mapper.getList();
		model.addAttribute("list", dtoList);
		return "get_list";
	}

	@RequestMapping("home")
	public String main() {
		return "home";
	}
}
