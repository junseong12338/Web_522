//package com.project522.controller;
//
//
//import java.util.ArrayList;
//import java.util.Arrays;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//import com.project522.domain.ReviewVO;
//import com.project522.mapper.ReviewMapper;
//
//import lombok.AllArgsConstructor;
//import lombok.extern.log4j.Log4j;
//
//
///**
// * Handles requests for the application home page.
// */
//@Controller
//@Log4j
//@AllArgsConstructor
//public class MainPageController2 {
//
//	
//	@Autowired
//	private ReviewMapper mapper;
//
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String main_Page(Model model) throws Exception {
//	    List<ReviewVO> List = mapper.getReviewList();
//	 
//	    List<ReviewVO> Tag1 = mapper.getDistinctList1();
//	    List<ReviewVO> Tag2 = mapper.getDistinctList2();
//	    List<ReviewVO> Tag3 = mapper.getDistinctList3();
//	    
//
//	    
//	    List<String[]> tagList1 = new ArrayList<>();// 분리한 태그를 저장할 리스트
//	    List<String[]> tagList2 = new ArrayList<>();// 분리한 태그를 저장할 리스트
//	    List<String[]> tagList3 = new ArrayList<>();// 분리한 태그를 저장할 리스트
//	    
//	  
//	    for (ReviewVO tag1 : Tag1) {
//	        addTagsToList(tagList1, tag1.getReview_SelectTag1(), tag1.getReview_Cafename());
//	    }
//
//	    for (ReviewVO tag2 : Tag2) {
//	        addTagsToList(tagList2, tag2.getReview_SelectTag2(), tag2.getReview_Cafename());
//	    }
//
//	    for (ReviewVO tag3 : Tag3) {
//	        addTagsToList(tagList3, tag3.getReview_SelectTag3(), tag3.getReview_Cafename());
//	    }
//	    
//
//	    for (ReviewVO review : List) {
//	        StringBuilder sb1 = new StringBuilder();
//	        addTagsToStringBuilder(tagList1, review, sb1);
//	        review.setReview_SelectTag1(sb1.toString());
//	    }
//
//	    for (ReviewVO review : List) {
//	        StringBuilder sb2 = new StringBuilder();
//	        addTagsToStringBuilder(tagList2, review, sb2);
//	        review.setReview_SelectTag2(sb2.toString());
//	    }
//
//	    for (ReviewVO review : List) {
//	        StringBuilder sb3 = new StringBuilder();
//	        addTagsToStringBuilder(tagList3, review, sb3);
//	        review.setReview_SelectTag3(sb3.toString());
//	    }
//	    
//	    
//
//	    model.addAttribute("List", List);
//	    return "Main_page";
//	}
//
//	private void addTagsToList(List<String[]> tagList, String selectTag, String cafeName) {
//	    if (selectTag != null) {
//	        String[] tags = selectTag.split(",");
//	        for (String tag : tags) {
//	            String[] tagArray = {cafeName, tag.trim()};
//	            tagList.add(tagArray);
//	        }
//	    }
//	}
//	
//	private void addTagsToStringBuilder(List<String[]> tagList, ReviewVO review, StringBuilder sb) {
//	    for (String[] tagArray : tagList) {
//	        if (review.getReview_Cafename().equals(tagArray[0])) {
//	            if (sb.length() > 0) {
//	                sb.append(" ");
//	            }
//	            String tag = tagArray[1].trim();
//	            if (!sb.toString().contains(tag)) {
//	                sb.append(tag);
//	            }
//	        }
//	    }
//	}
//	
//	
//}
//
//
