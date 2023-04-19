package com.project522.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project522.domain.ReviewVO;
import com.project522.mapper.ReviewMapper;
import com.project522.service.ReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
@Controller
@Log4j
@RequestMapping("/review/*")
@AllArgsConstructor
public class DetailReviewController {
	
	
	@Autowired
	private ReviewMapper mapper;

	// 리뷰 세부 리스트 화면
	@GetMapping("/DetailReview")
	public String DetailReview(@RequestParam("review_Cafename") String review_Cafename, Model model) {
	    List<ReviewVO> List = mapper.getReviewListByCafename(review_Cafename);
	    model.addAttribute("List", List);
	    
		if (List != null) {
			  model.addAttribute("List", List);
		} 

	    return "review/DetailReview";
	}

}
