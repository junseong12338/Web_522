package com.project522.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project522.domain.ReviewVO;
import com.project522.domain.TagVO;
import com.project522.service.ReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;

@Controller
@Log4j
@RequestMapping("/review/*")
@AllArgsConstructor
public class ReviewController {

	private ReviewService service;

	@GetMapping("/insertReview")
	public String insertReview(TagVO tagvo,Model model) throws Exception {
		log.info("리뷰 작성페이지 진입");
		model.addAttribute("getTagList1", service.getReviewTagList1(tagvo));
		model.addAttribute("getTagList2", service.getReviewTagList2(tagvo));
		model.addAttribute("getTagList3", service.getReviewTagList3(tagvo));
		model.addAttribute("getTagList4", service.getReviewTagList4(tagvo));

		return "review/insertReview";

	}

	@ResponseBody
	@PostMapping("/reviewinsert")
	public void insertReview(ReviewVO reviewvo, RedirectAttributes rttr) throws Exception {

	

		log.info("ReviewVO : " + reviewvo);
		service.register(reviewvo);
		rttr.addFlashAttribute("result", reviewvo.getReview_Num());

	}
	
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		Date date = new Date();
		String str = sdf.format(date);

		return str.replace("-", File.separator);
	}

	private boolean checkImageType(File file) {

		try {
			String contentType = Files.probeContentType(file.toPath());

			return contentType.startsWith("image");

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;
	}
}
