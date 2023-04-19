package com.project522.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project522.domain.ReviewVO;

import com.project522.mapper.ReviewMapper;


import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


/**
 * Handles requests for the application home page.
 */
@Controller
@Log4j
@AllArgsConstructor
public class MainPageController {
	
	@Autowired
	private ReviewMapper mapper;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main_Page(Model model) throws Exception {
	
		List<ReviewVO> List = mapper.getReviewList();
		if (List != null) {
			 model.addAttribute("List", List);
		} 
		return "Main_page";
	}

	
}


