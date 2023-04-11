package com.project522.controller;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.project522.domain.ReviewVO;
import com.project522.domain.TagVO;
import com.project522.mapper.ReviewMapper;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReviewMapperTests {
	@Autowired
	private ReviewMapper mapper;
	@Test
	public void testInsert() throws Exception {
		ReviewVO reviewvo = new ReviewVO();
		reviewvo.setReview_Num(1);
		reviewvo.setReview_Title("hello");
		reviewvo.setReview_Content("test123123123");
		mapper.insertReview(reviewvo);
		log.info(reviewvo);
	}
	 @Test
     public void testGetList() {
         TagVO tagvo= new TagVO();
         
         List<TagVO> list = mapper.getReviewTag1(tagvo);
 		log.info(list);

         
         
     }
}
