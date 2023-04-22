package com.project522.controller;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	 
	    List<ReviewVO> Tag1 = mapper.getDistinctList1();
	    List<ReviewVO> Tag2 = mapper.getDistinctList2();
	    List<ReviewVO> Tag3 = mapper.getDistinctList3();
	    

	   

	    

	    
	    
	    List<String[]> tagList1 = new ArrayList<>();// 분리한 태그를 저장할 리스트
	    List<String[]> tagList2 = new ArrayList<>();// 분리한 태그를 저장할 리스트
	    List<String[]> tagList3 = new ArrayList<>();// 분리한 태그를 저장할 리스트
	    
	    for (ReviewVO tag1 : Tag1) {
	        String selectTag1 = tag1.getReview_SelectTag1();
	        if (selectTag1 != null) {
	            String[] tags = selectTag1.split(",");
	            for (String tag : tags) {
	                String[] tagArray = {tag1.getReview_Cafename(), tag.trim()};
	                tagList1.add(tagArray);
	            }
	        }
	    }
	    
	    for (ReviewVO tag2 : Tag2) {
	        String selectTag2 = tag2.getReview_SelectTag2();
	        if (selectTag2 != null) {
	            String[] tags = selectTag2.split(",");
	            for (String tag : tags) {
	                String[] tagArray = {tag2.getReview_Cafename(), tag.trim()};
	                tagList2.add(tagArray);
	            }
	        }
	    }
	    
	    for (ReviewVO tag3 : Tag3) {
	        String selectTag3 = tag3.getReview_SelectTag3();
	        if (selectTag3 != null) {
	            String[] tags = selectTag3.split(",");
	            for (String tag : tags) {
	                String[] tagArray = {tag3.getReview_Cafename(), tag.trim()};
	                tagList3.add(tagArray);
	            }
	        }
	    }
	    
	    


	    
	    
	    for (ReviewVO review : List) {
	        StringBuilder sb = new StringBuilder();
	        for (int i = 0; i < tagList1.size(); i++) {
	            String[] tagArray = tagList1.get(i);
	            if (review.getReview_Cafename().equals(tagArray[0])) {
	                if (sb.length() > 0) {
	                    sb.append(" ");
	                }
	                String tag = tagArray[1].trim();
	                if (!sb.toString().contains(tag)) {
	                    sb.append(tag);
	                }
	            }
	        }
	        review.setReview_SelectTag1(sb.toString());
	        
	    }
	    
	    for (ReviewVO review : List) {
	        StringBuilder sb = new StringBuilder();
	        for (int i = 0; i < tagList2.size(); i++) {
	            String[] tagArray = tagList2.get(i);
	            if (review.getReview_Cafename().equals(tagArray[0])) {
	                if (sb.length() > 0) {
	                    sb.append(" ");
	                }
	                String tag = tagArray[1].trim();
	                if (!sb.toString().contains(tag)) {
	                    sb.append(tag);
	                }
	            }
	        }
	        review.setReview_SelectTag2(sb.toString());
	        
	    }
	    
	    
	    for (ReviewVO review : List) {
	        StringBuilder sb = new StringBuilder();
	        for (int i = 0; i < tagList3.size(); i++) {
	            String[] tagArray = tagList3.get(i);
	            if (review.getReview_Cafename().equals(tagArray[0])) {
	                if (sb.length() > 0) {
	                    sb.append(" ");
	                }
	                String tag = tagArray[1].trim();
	                if (!sb.toString().contains(tag)) {
	                    sb.append(tag);
	                }
	            }
	        }
	        review.setReview_SelectTag3(sb.toString());
	        
	    }
	    
	    
	    
	    
	    model.addAttribute("List", List);
	    return "Main_page";
	}

}


